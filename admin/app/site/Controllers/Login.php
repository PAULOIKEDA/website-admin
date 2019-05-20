<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Login {

    private $Dados;

    public function entrar() {

        $this->Dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);        

        if(!empty($this->Dados['enviarLogin'])) {
            unset($this->Dados['enviarLogin']);
            $visualizarLogin = new \Site\Models\Login();
            $visualizarLogin->entrar($this->Dados);
            if($visualizarLogin->getResultado()) {
               $UrlDestino = URLADM . 'home/index';
               header("Location: $UrlDestino");
            } else {
                $this->Dados['form'] = $this->Dados;
            }
           
        }

        $carregaView = new \Core\ConfigView("Site/Views/login/entrar", $this->Dados);
        $carregaView->renderizarLogin();

    }

    public function sair() {

        unset(
            $_SESSION['usuario_id'],
            $_SESSION['usuario_nome'],
            $_SESSION['usuario_email'],
            $_SESSION['usuario_imagem'],
            $_SESSION['usuario_niveis_acesso_id'],
            $_SESSION['usuario_ordem_nivel_acesso']
        );
        $_SESSION['msg'] = "<div class='alert alert-success'>Logout com sucesso</div>";
        $UrlDestino = URLADM .'login/entrar';
        header("Location: $UrlDestino");
    
    }

    public function novo() {

        $this->Dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
        if(!empty($this->Dados['novoUser'])) {
            unset($this->Dados['novoUser']);
            $cadastrarUsuario = new \Site\Models\Login();
            $cadastrarUsuario->cadastrarUsuario($this->Dados);
            if($cadastrarUsuario->getResultado()) {
                $UrlDestino = URLADM . 'login/entrar';
                header('Location: $UrlDestino');
            }
        }

        $carregaView = new \Core\ConfigView("Site/Views/login/novo", $this->Dados);
        $carregaView->renderizarLogin();

    }
 
}