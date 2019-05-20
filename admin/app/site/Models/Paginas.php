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

    if(!isset($_SESSION['usuario_niveis_acesso_id'])) {
      $_SESSION['usuario_niveis_acesso_id'] = null;
    }

    $this->UrlController = (string) $UrlController;
    $this->UrlMetodo = (string) $UrlMetodo;

    $listar = new \Site\Models\helper\SiteRead();

    $listar->fullRead("SELECT pg.id FROM adm_paginas pg LEFT JOIN adm_niveis_acesso_paginas nap ON nap.pagina_id=pg.id AND nap.nivel_acesso_id =:nivel_acesso_id WHERE (pg.controller =:controller AND pg.metodo =:metodo) AND ((pg.lib_pub =:lib_pub) OR (nap.permissao =:permissao)) LIMIT :limit", "controller={$this->UrlController}&metodo={$this->UrlMetodo}&lib_pub=1&limit=1&nivel_acesso_id={$_SESSION['usuario_niveis_acesso_id']}&permissao=1");
    
    $this->Resultado = $listar->getResultado();

    return ($this->Resultado);
    
  }

}