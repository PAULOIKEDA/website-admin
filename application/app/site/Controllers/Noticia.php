<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Noticia {

  private $Dados;
  private $Noticia;

  public function index($Noticia = null) {

    $listar_menu = new \Site\Models\Menu();
    $this->Dados['menu'] = $listar_menu->listarMenu();

    $listar_seo = new \Site\Models\Seo();
    $this->Dados['seo'] = $listar_seo->listarSeo();

    $this->Noticia = (string) $Noticia;
    $visualizar = new \Site\Models\Noticia();
    $this->Dados['blog'] = $visualizar->visualizar($this->Noticia);

    $listar_ultimas = new \Site\Models\NoticiaUltimas();
    $this->Dados['blog_ultimas'] = $listar_ultimas->listarUltimas();

    $listar_destaques = new \Site\Models\NoticiaDestaques();
    $this->Dados['blog_destaques'] = $listar_destaques->listarDestaques();

    $carregarView = new \Core\ConfigView("site/Views/blog/noticia", $this->Dados);
    $carregarView->renderizar();

  }

}