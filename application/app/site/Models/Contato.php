<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Contato {
  
  private $Resultado;
  private $Dados;

  public function cadastrarContato(array $Dados) {
    $this->Dados = $Dados;
    $cadastro = new \Site\Models\helper\SiteCreate();
    $cadastro->exeCreate('contatos', $this->Dados);
  }

}