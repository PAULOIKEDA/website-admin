<?php

namespace Admin\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Home {

    private $Dados;

    public function index() {

        $carregarView = new \Core\ConfigView("admin/Views/home/home", $this->Dados);
        $carregarView->renderizar();

    }    

}