<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Usuarios {

    public function listar() {

        echo "listar usuarios";

    }    

}