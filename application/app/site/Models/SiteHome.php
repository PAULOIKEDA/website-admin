<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class SiteHome {

    private $Resultado;

    public function index() {
        //echo "Listar dados <br>";
        //$conexao = new \Site\Models\helper\SiteConn();
        //$conexao->getConn();
        $listar = new \Site\Models\helper\SiteRead();
        // $listar->exeRead(
        //     'carousels',
        //     'WHERE estado_id =:estado_id LIMIT :limit',
        //     'estado_id=1&limit=4'
        // );
        $listar->fullRead("SELECT nome, link FROM carousels WHERE estado_id =:estado_id LIMIT :limit", 'estado_id=1&limit=4');
        $this->Resultado['carousels'] = $listar->getResultado();
        return $this->Resultado['carousels'];
    }

}