<?php


namespace Site\Models\helper;

if (!defined('URL')) {
    header('Location: /');
    exit();
}


class SiteEmail {
    private $Resultado;
    private $Dados;
    private $Formato;

    function getResultado() {
        return $this->Resultado;
    }

    public function validarEmail($Email) {
        $this->Dados = (string) $Email;
        $this->Formato = '/^[^0-9][A-z0-9_]+([.][A-z0-9_]+)*[@][A-z0-9_]+([.][A-z0-9_]+)*[.][A-z]{2,4}$/';

        if (preg_match($this->Formato, $this->Dados)) {
            $this->Resultado = true;
        } else {
            $_SESSION['msg'] = "<div class='alert alert-danger'>E-mail inválido.</div>";
            $this->Resultado = false;
        }
    }
}