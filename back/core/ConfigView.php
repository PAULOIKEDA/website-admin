<?php

namespace Core;

class ConfigView {

    private $Nome;
    private $Dados;

    public function __construct($Nome, arra $Dados = null) {
        $this->Nome = (string) $Nome;
        $this->Dados = (string) $Dados;
    }

    public function renderizar() {

        if (file_exists('app/' . $this->Nome . '.php')) {
            include 'app/site/Views/include/cabecalho.php';
            include 'app/' . $this->Nome . '.php';
            include 'app/site/Views/include/rodape.php';
        } else {
            echo "Erro ao carregar a página: {$this->Nome}";
        }
        
    }

}