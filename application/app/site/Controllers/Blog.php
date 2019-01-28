<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Blog {

    private $Dados;
    private $PageId;

    public function index() {

        $listar_menu = new \Site\Models\Menu();
        $this->Dados['menu'] = $listar_menu->listarMenu();

        $this->PageId = filter_input(INPUT_GET, 'pg', FILTER_SANITIZE_NUMBER_INT);
        $this->PageId = $this->PageId ? $this->PageId : 1;

        $listar_blog = new \Site\Models\Blog();
        $this->Dados['blog'] = $listar_blog->listar($this->PageId);
        $this->Dados['paginacao'] = $listar_blog->getResultadoPg();

        $carregarView = new \Core\ConfigView("site/Views/blog/blog", $this->Dados);
        $carregarView->renderizar();

    }

}