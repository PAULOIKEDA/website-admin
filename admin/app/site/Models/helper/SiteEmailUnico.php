<?php


namespace Site\Models\helper;

if (!defined('URL')) {
    header('Location: /');
    exit();
}


class SiteEmailUnico {
    private $Email;
    private $Resultado;

    function getResultado() {
        return $this->Resultado;
    }

    public function validarEmailUnico($Email) {
        $this->Email = (string) $Email;

        $validarEmailUnico = new SiteRead();
        $validarEmailUnico->fullRead("SELECT id FROM adm_usuarios WHERE email =:email LIMIT :limit", "email={$this->Email}&limit=1");
        $this->Resultado = $validarEmailUnico->getResultado();
        if (!empty($this->Resultado)) {
            $_SESSION['msg'] = "<div class='alert alert-danger'>E-mail já cadastrado</div>";
            $this->Resultado = false;
        } else {
            $this->Resultado = true;
        }
    }
}