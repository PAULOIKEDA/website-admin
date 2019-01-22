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
    $this->validarDados();
    if ($this->Resultado) {
      $this->inserirDados();
    }
  }

  private function validarDados() {
    $this->Dados = array_map('strip_tags', $this->Dados);
    $this->Dados = array_map('trim', $this->Dados);
    if (in_array('', $this->Dados)) {
      $_SESSION['msg'] = "<div class='alert alert-danger'>Preencha todos os campos.</div>";
      $this->Resultado = false;
    }else{
      if (filter_var($this->Dados['email'], FILTER_VALIDATE_EMAIL)) {
        $this->Resultado = true;
      }else{
        $_SESSION['msg'] = "<div class='alert alert-danger'>Informe um e-mail válido.</div>";
        $this->Resultado = false;
      }
      
    }
  }

  private function inserirDados() {
    $cadastro = new \Site\Models\helper\SiteCreate();
    $cadastro->exeCreate('contatos', $this->Dados);
    if($cadastro->getResultado()) {
      $_SESSION['msg'] = "<div class='alert alert-success'>Mensagem enviada com sucesso.</div>";
      $this->Resultado = true;
    }else{
      $_SESSION['msg'] = "<div class='alert alert-danger'>Mensagem não enviada.</div>";
      $this->Resultado = false;
    }
  }

  function getResultado() {
    return $this->Resultado;
  }
 
}