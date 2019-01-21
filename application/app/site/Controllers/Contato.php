<?php

namespace Site\Controllers;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Contato {

    private $Dados;

    public function index() {
        $this->Dados = ['nome' => 'Danrlei', 'email' => 'danrlei@gmail.com', 'endereco' => 'Rua ...', 'cidade' => 'ibiporã', 'estado' => 'PR', 'cep' => '86200000', 'mensagem' => 'Olá, desejo orçamento de um site', 'created' => date('Y-m-d H:i:s')];
        //var_dump($this->Dados);
        $cadastro = new \Site\Models\Contato();
        $cadastro->cadastrarContato($this->Dados);
    }

}