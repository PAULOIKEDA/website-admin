<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Contato {

    public function index() {
        echo "Página Contato <br>";
    }

}