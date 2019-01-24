<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Noticia {

  public function index() {
    echo "noticia aberta";
  }

}