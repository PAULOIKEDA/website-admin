<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Sobre {

  private $Resultado;

  public function listar() {
    $listar = new \Site\Models\helper\SiteRead();
    $listar->fullRead('SELECT titulo, descricao, icone_1, nome_1, descricao_1, icone_2, nome_2, descricao_2, icone_3, nome_3, descricao_3 FROM sobre');
    $this->Resultado = $listar->getResultado();
    return $this->Resultado;
  }

}