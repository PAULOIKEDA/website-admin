<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Home {

    private $Dados;

    public function index() {

        $listar_menu = new \Site\Models\Menu();
        $this->Dados['menu'] = $listar_menu->listarMenu();

        $listar_seo = new \Site\Models\Seo();
        $this->Dados['seo'] = $listar_seo->listarSeo();

        $listar_carousel = new \Site\Models\Carousel();
        $this->Dados['carousels'] = $listar_carousel->listar();

        $listar_solucao = new \Site\Models\SolucaoHome();
        $this->Dados['solucoes'] = $listar_solucao->listar();

        $listar_video = new \Site\Models\Video();
        $this->Dados['videos'] = $listar_video->listar();

        $listar_blog = new \Site\Models\BlogHome();
        $this->Dados['blog'] = $listar_blog->listar();

        $carregarView = new \Core\ConfigView("site/Views/home/home", $this->Dados);
        $carregarView->renderizar();
    }    

}