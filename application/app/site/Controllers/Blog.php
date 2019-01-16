<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Blog {

    public function index() {
        echo "Página Blog <br>";
    }

}