<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Home {

    private $Dados;

    public function index() {
        $listar_carousel = new \Site\Models\Carousel();
        $this->Dados['carousels'] = $listar_carousel->listar();

        $listar_solucao = new \Site\Models\SiteSolucao();
        $this->Dados['solucoes'] = $listar_solucao->listar();

        $listar_video = new \Site\Models\SiteVideo();
        $this->Dados['videos'] = $listar_video->listar();

        $carregarView = new \Core\ConfigView("site/Views/home/home", $this->Dados);
        $carregarView->renderizar();
    }    

}