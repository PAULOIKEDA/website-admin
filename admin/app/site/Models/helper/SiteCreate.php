<?php

namespace Site\Models\helper;

use PDO;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class SiteCreate extends SiteConn {

    private $Tabela;
    private $Dados;
    private $Query;
    private $Conn;
    private $Resultado;

    function getResultado() {

        return $this->Resultado;

    }

    public function exeCreate($Tabela, array $Dados) {

        $this->Tabela = (string) $Tabela;
        $this->Dados = $Dados;
        $this->getInstrucao();
        $this->executarInstrucao();

    }

    private function getInstrucao() {

        $colunas = implode(', ', array_keys($this->Dados));
        $valores = ':' . implode(', ', array_keys($this->Dados));
        $this->Query = "INSERT INTO {$this->Tabela} ({$colunas}) VALUES ({$valores})";
        echo $this->Query;

    }

    private function executarInstrucao() {

        $this->conexao();
        try {
            $this->Query->execute($this->Dados);
            $this->Resultado = $this->Conn->lastInsertId();
        } catch (Exception $ex) {
            $this->Resultado = null;
        }

    }

    private function conexao() {

        $this->Conn = parent::getConn();
        $this->Query = $this->Conn->prepare($this->Query);

    }

}