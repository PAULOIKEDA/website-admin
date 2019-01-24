<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Blog {

    private $Dados;

    public function index() {

        $listar_blog = new \Site\Models\Blog();
        $this->Dados['blog'] = $listar_blog->listar();

        $carregarView = new \Core\ConfigView("site/Views/blog/blog", $this->Dados);
        $carregarView->renderizar();

    }

}