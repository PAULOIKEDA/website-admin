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
           
        } else {

        }

        $carregaView = new \Core\ConfigView("Site/Views/login/entrar", $this->Dados);
        $carregaView->renderizarLogin();

    }    

}