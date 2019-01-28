<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class NoticiaUltimas {

  private $Resultado;

  public function listarUltimas() {
    $listarUltimas = new \Site\Models\helper\SiteRead();
    $listarUltimas->fullRead('SELECT id, titulo, descricao, imagem, created, slug FROM blog WHERE admin_site_id =:admin_site_id ORDER BY id DESC LIMIT :limit', "admin_site_id=1&limit=3");
    $this->Resultado = $listarUltimas->getResultado();
    return $this->Resultado;
  }

}