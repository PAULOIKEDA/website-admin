<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Noticia {

  private $Resultado;
  private $Noticia;

  public function visualizar($Noticia = null) {
    $this->Noticia = (string) $Noticia;
    $visualizar = new \Site\Models\helper\SiteRead();
    $visualizar->fullRead('SELECT id, titulo, conteudo, imagem, created, autor, imagem_autor, descricao_autor FROM blog WHERE admin_site_id =:admin_site_id AND slug =:slug ORDER BY id DESC LIMIT :limit', "admin_site_id=1&slug={$this->Noticia}&limit=1");
    $this->Resultado = $visualizar->getResultado();
    return $this->Resultado;
  }

}