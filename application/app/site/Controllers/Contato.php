<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Contato {

    private $Dados;

    public function index() {        

        $this->Dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);

        if (!empty($this->Dados['EnviaContato'])) {
            unset($this->Dados['EnviaContato']);
            $cadastro = new \Site\Models\Contato();
            $cadastro->cadastrarContato($this->Dados);
            if ($cadastro->getResultado()) {
                $this->Dados['form'] = null;
            }else{
                $this->Dados['form'] = $this->Dados;
            }
            
        }     

        $listar_menu = new \Site\Models\Menu();
        $this->Dados['menu'] = $listar_menu->listarMenu();

        $carregarView = new \Core\ConfigView("site/Views/contato/contato", $this->Dados);
        $carregarView->renderizar();
    }

}