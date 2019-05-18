<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Login {

    private $Dados;
    private $Resultado;

    function getResultado() {
        return $this->Resultado;
    }

    public function entrar(array $Dados) {

        $this->Dados = $Dados;
        $this->validarDados();

    }

    private function validarDados() {

        $this->Dados = array_map('strip_tags', $this->Dados);
        $this->Dados = array_map('trim', $this->Dados);
        if(in_array('', $this->Dados)) {
            $_SESSION['msg'] = "<div class='alert alert-danger'>Necessário preencher todos os campos corretamente</div>:";
            $this->Resultado = false;
        } else {
            $this->Resultado = true;
        }

    }

}