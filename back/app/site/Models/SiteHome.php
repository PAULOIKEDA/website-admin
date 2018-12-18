<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class SiteHome {

    public function index() {
        //echo "Listar dados <br>";
        //$conexao = new \Site\Models\helper\SiteConn();
        //$conexao->getConn();
        $listar = new \Site\Models\helper\SiteRead();
        $listar->exeRead(
            'carousels',
            'WHERE estado_id =: estado_id LIMIT :limit',
            'estado_id = 1 & limit=4'
        );
    }

}