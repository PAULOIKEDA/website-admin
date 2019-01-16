<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Home {

    private $Dados;

    public function index() {
        $home = new \Site\Models\SiteHome();
        $this->Dados = $home->index();

        $carregarView = new \Core\ConfigView("site/Views/home/home", $this->Dados);
        $carregarView->renderizar();
    }    

}