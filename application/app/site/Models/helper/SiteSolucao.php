<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class SiteSolucao {

    private $Resultado;

    public function listar() {
        $listar = new \Site\Models\helper\SiteRead();
        $listar->exeRead('solucoes', 'LIMIT :limit', 'limit=1');
        $this->Resultado = $listar->getResultado();
        return $this->Resultado;
    }

}