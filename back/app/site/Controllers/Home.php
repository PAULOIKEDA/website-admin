<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Home {

    public function index() {
        $home = new \Site\Models\SiteHome();
        $home->index();

        $carregarView = new \Core\ConfigView("site/Views/home/home");
        $carregarView->renderizar();
    }    

}