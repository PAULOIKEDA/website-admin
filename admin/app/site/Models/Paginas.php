<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Paginas {

  private $Resultado;
  private $UrlController;
  private $UrlMetodo;

  public function listarPaginas($UrlController = null, $UrlMetodo = null) {

    $this->UrlController = (string) $UrlController;
    $this->UrlMetodo = (string) $UrlMetodo;

    $listar = new \Site\Models\helper\SiteRead();

    $listar->fullRead("SELECT pg.id FROM adm_paginas pg WHERE pg.controller =:controller AND metodo =:metodo", "controller={$this->UrlController}&metodo={$this->UrlMetodo}");
    
    $this->Resultado = $listar->getResultado();

    return ($this->Resultado);
    
  }

}