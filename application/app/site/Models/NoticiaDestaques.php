<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class NoticiaDestaques {

  private $Resultado;

  public function listarDestaques() {
    $listarDestaques = new \Site\Models\helper\SiteRead();
    $listarDestaques->fullRead('SELECT id, titulo, imagem, slug FROM blog WHERE admin_site_id =:admin_site_id ORDER BY acessos DESC LIMIT :limit', "admin_site_id=1&limit=3");
    $this->Resultado = $listarDestaques->getResultado();
    return $this->Resultado;
  }

}