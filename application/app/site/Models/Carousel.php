<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Carousel {

    private $Resultado;

    public function listar() {
        //echo "Listar dados <br>";
        //$conexao = new \Site\Models\helper\SiteConn();
        //$conexao->getConn();
        $listar = new \Site\Models\helper\SiteRead();
        // $listar->exeRead(
        //     'carousels',
        //     'WHERE estado_id =:estado_id LIMIT :limit',
        //     'estado_id=1&limit=4'
        // );
        $listar->fullRead("SELECT car.id, car.nome, car.imagem, car.titulo, car.descricao, car.posicao_text, car.titulo_botao, car.link, cor.cor
            FROM carousels car
            INNER JOIN cores cor ON cor.id=car.cor_id
            WHERE estado_id =:estado_id ORDER BY ordem ASC LIMIT :limit", 'estado_id=1&limit=4');
        $this->Resultado['carousels'] = $listar->getResultado();
        return $this->Resultado['carousels'];
    }

}