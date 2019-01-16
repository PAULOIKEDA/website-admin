<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Solucoes {

    public function index() {
        echo "Página Soluções <br>";
    }

}