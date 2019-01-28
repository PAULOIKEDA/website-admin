<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Solucoes {

    public function index() {

        $listar_menu = new \Site\Models\Menu();
        $this->Dados['menu'] = $listar_menu->listarMenu();
        echo "Página Soluções <br>";
    }

}