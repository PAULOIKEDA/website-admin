<?php


namespace Site\Models\helper;

if (!defined('URL')) {
    header('Location: /');
    exit();
}


class SiteValidarUsuario {
    private $Usuario;
    private $Resultado;

    function getResultado() {
        return $this->Resultado;
    }

    public function validarUsuario($Usuario) {
        $this->Usuario = (string) $Usuario;

        $validarUsuario = new SiteRead();
        $validarUsuario->fullRead("SELECT id FROM adm_usuarios WHERE usuario =:usuario LIMIT :limit", "usuario={$this->Usuario}&limit=1");
        $this->Resultado = $validarUsuario->getResultado();
        if (!empty($this->Resultado)) {
            $_SESSION['msg'] = "<div class='alert alert-danger'>Usuário já cadastrado</div>";
            $this->Resultado = false;
        } else {
            $this->Resultado = true;
        }
    }
}