<?php

namespace Core;

class ConfigController {

    private $Url;
    private $UrlConjunto;
    private $UrlController;
    private $UrlParametro;
    private $UrlMetodo;
    private $Classe;
    private $Paginas;
    private static $Format;

    public function __construct() {
        if (!empty(filter_input(INPUT_GET, 'url', FILTER_DEFAULT))) {
            $this->Url = filter_input(INPUT_GET, 'url', FILTER_DEFAULT);
            $this->limparUrl();
            $this->UrlConjunto = explode("/", $this->Url);

            if (isset($this->UrlConjunto[0])) {
                $this->UrlController = $this->slugController($this->UrlConjunto[0]);
            } else {
                $this->UrlController = $this->slugController(CONTROLLER);
            }

            if (isset($this->UrlConjunto[1])) {
                $this->UrlMetodo = $this->slugMetodo($this->UrlConjunto[1]);
            } else {
                $this->UrlMetodo = $this->slugMetodo(METODO);
            }

            if (isset($this->UrlConjunto[2])) {
                $this->UrlParametro = $this->UrlConjunto[2];
            } else {
                $this->UrlParametro = null;
            }

            //echo "URL: {$this->Url} <br>";
            //echo "Controller: {$this->UrlController} <br>";
            //echo "Metodo: {$this->UrlMetodo} <br>";
            //echo "Parametro: {$this->UrlParametro} <br>";
        } else {
            $this->UrlController = $this->slugController(CONTROLLER);
            $this->UrlMetodo = $this->slugMetodo(METODO);
            $this->UrlParametro = null;
        }        
    }

    private function limparUrl() {
        $this->Url = strip_tags($this->Url);
        $this->Url = trim($this->Url);
        $this->Url = rtrim($this->Url, "/");
        self::$Format = array();
        self::$Format['a'] = 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜüÝÞßàáâãäåæçèéêëìíîïðñòóôõöøùúûýýþÿRr"!@#$%&*()_-+={[}]?;:.,\\\'<>°ºª ';
        self::$Format['b'] = 'aaaaaaaceeeeiiiidnoooooouuuuuybsaaaaaaaceeeeiiiidnoooooouuuyybyRr--------------------------------';
        $this->Url = strtr(utf8_decode($this->Url), utf8_decode(self::$Format['a']), self::$Format['b']);
    }

    private function slugController($SlugController) {
        $UrlController = strtolower($SlugController);
        $UrlController = explode("-", $UrlController);
        $UrlController = implode(" ", $UrlController);
        $UrlController = ucwords($UrlController);
        $UrlController = str_replace(" ", "", $UrlController);
        return $UrlController;
    }

    private function slugMetodo($SlugMetodo) {
        $UrlController = strtolower($SlugMetodo);
        return lcfirst($UrlController);
    }

    public function carregar() {
        $listarPg = new \Site\Models\Paginas();
        $this->Paginas = $listarPg->listarPaginas($this->UrlController, $this->UrlMetodo);              
        if($this->Paginas) {
            extract($this->Paginas[0]);
            $this->Classe = "\\Site\\Controllers\\".$this->UrlController;
            if(class_exists($this->Classe)) {
                $this->carregarMetodo();
            } else {
                $this->UrlController = $this->slugController(CONTROLLER);
                $this->UrlMetodo = $this->slugMetodo(METODO);
                $this->carregar();
            }
        } else {
            $this->UrlController = $this->slugController('Login');
            $this->UrlMetodo = $this->slugMetodo('entrar');
            $this->carregar();
        }
    }

    private function carregarMetodo() {

        $classeCarregar = new $this->Classe;
        if(method_exists($classeCarregar, $this->UrlMetodo)) {
            if($this->UrlParametro !== null) {
                $classeCarregar->{$this->UrlMetodo}($this->UrlParametro);
            } else {
                $classeCarregar->{$this->UrlMetodo}();
            }
        } else {
            $this->UrlController = $this->slugController(CONTROLLER);
            $this->UrlMetodo = $this->slugMetodo(METODO);
            $this->carregar();
        }

    }

}