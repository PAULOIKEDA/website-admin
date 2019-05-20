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
        if($this->Resultado) {
            $validarLogin = new \Site\Models\helper\SiteRead();
            $validarLogin->fullRead("SELECT * FROM adm_usuarios WHERE usuario =:usuario LIMIT :limit", "usuario={$this->Dados['usuario']}&limit=1");
            $this->Resultado = $validarLogin->getResultado();
            if(!empty($this->Resultado)) {
                $this->validarSenha();
            } else {
                $_SESSION['msg'] = "<div class='alert alert-danger'>Usuário incorreto ou não cadastrado</div>";
                $this->Resultado = false;
            }
        }

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

    private function validarSenha() {

        if(password_verify($this->Dados['senha'], $this->Resultado[0]['senha'])) {
            $_SESSION['usuario_id'] = $this->Resultado[0]['id'];
            $_SESSION['usuario_nome'] = $this->Resultado[0]['nome'];
            $_SESSION['usuario_email'] = $this->Resultado[0]['email'];
            $_SESSION['usuario_imagem'] = $this->Resultado[0]['imagem'];
            $_SESSION['usuario_niveis_acesso_id'] = $this->Resultado[0]['niveis_acesso_id'];
            $this->Resultado = true;
        } else {
            $_SESSION['msg'] = "<div class='alert alert-danger'>Senha incorreta</div>";
            $this->Resultado = false;
        }

    } 

}