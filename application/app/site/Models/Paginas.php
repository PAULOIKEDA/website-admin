<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Paginas {

  private $Resultado;
  private $UrlController;

  public function listarPaginas($UrlController = null) {
    $this->UrlController = (string) $UrlController;
    $listar = new \Site\Models\helper\SiteRead();
    $listar->fullRead('SELECT id FROM paginas WHERE estado_pagina_id =:estado_pagina_id AND controller =:controller LIMIT :limit', "estado_pagina_id=1&controller={$this->UrlController}&limit=1");
    $this->Resultado = $listar->getResultado();
    return $this->Resultado;
  }

}