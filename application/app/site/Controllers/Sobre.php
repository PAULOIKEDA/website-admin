<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Sobre {

    private $Dados;

    public function index() {

        $listar_menu = new \Site\Models\Menu();
        $this->Dados['menu'] = $listar_menu->listarMenu();

        $listar_seo = new \Site\Models\Seo();
        $this->Dados['seo'] = $listar_seo->listarSeo();

        $listar_sobre = new \Site\Models\Sobre();
        $this->Dados['sobre'] = $listar_sobre->listar();

        $carregarView = new \Core\ConfigView("site/Views/sobre/sobre", $this->Dados);
        $carregarView->renderizar();
    }

}