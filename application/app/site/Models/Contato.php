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
    if($cadastro->getResultado()) {
      $_SESSION['msg'] = "<div class='alert alert-success'>Mensagem enviada com sucesso.</div>";
    }else{
      $_SESSION['msg'] = "<div class='alert alert-danger'>Mensagem não enviada.</div>";
    }
  }

}