<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Sobre {

    public function index() {
        echo "Página Sobre <br>";
    }

}