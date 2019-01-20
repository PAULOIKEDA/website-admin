<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Blog {

  private $Resultado;

  public function listar() {
    $listar = new \Site\Models\helper\SiteRead();
    $listar->fullRead('SELECT id, titulo, descricao, imagem, slug FROM blog WHERE admin_site_id =:admin_site_id ORDER BY id DESC LIMIT :limit','admin_site_id=1&limit=3');
    $this->Resultado = $listar->getResultado();
    return $this->Resultado;
  }

}