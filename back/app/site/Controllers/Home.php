<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Home {

    public function index() {
        $carregarView = new \Core\ConfigView("site/Views/home/home");
        $carregarView->renderizar();
    }    

}