<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Seo {

    private $Resultado;
    private $UrlController;
    private $Url;
    private $UrlConjunto;
    private $UrlParametro;
    private $ResultadoFace;
    private static $Format;

    public function listarSeo() {
        $this->montarUrl();
        $listar = new \Site\Models\helper\SiteRead();
        $listar->fullRead('SELECT pg.id, pg.endereco, pg.titulo, pg.keywords, pg.description, pg.author, pg.imagem, rob.tipo tipo_rob FROM paginas pg INNER JOIN robots rob ON rob.id=pg.robot_id WHERE pg.controller =:controller ORDER BY pg.id ASC LIMIT :limit', "controller={$this->UrlController}&limit=1");
        $this->Resultado = $listar->getResultado();

        $listarFace = new \Site\Models\helper\SiteRead();
        $listarFace->fullRead('SELECT og_site_name, og_locale, fb_admins FROM seo WHERE id =:id LIMIT :limit', "id=1&limit=1");
        $this->ResultadoFace = $listarFace->getResultado();
        $this->Resultado[0]['og_site_name'] = $this->ResultadoFace[0]['og_site_name'];
        $this->Resultado[0]['og_locale'] = $this->ResultadoFace[0]['og_locale'];
        $this->Resultado[0]['fb_admins'] = $this->ResultadoFace[0]['fb_admins'];
        return $this->Resultado;
    }

    public function montarUrl() {
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
                $this->UrlParametro = $this->UrlConjunto[1];
            } else {
                $this->UrlParametro = null;
            }

            // echo "URL: {$this->Url} <br>";
            // echo "Controller: {$this->UrlController} <br>";
        } else {
            $this->UrlController = $this->slugController(CONTROLLER);
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

}