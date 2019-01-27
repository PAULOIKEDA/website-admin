<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Blog {

  private $Resultado;
  private $PageId;
  private $ResultadoPg;
  private $LimiteResultado = 3;

  function getResultadoPg() {
    return $this->ResultadoPg;
  }

  public function listar($PageId = null) {
    $this->PageId = (int) $PageId;
    $paginacao = new \Site\Models\helper\SitePagination(URL . 'blog');
    $paginacao->condicao($this->PageId, $this->LimiteResultado);
    $paginacao->paginacao('SELECT COUNT(id) AS num_result FROM blog WHERE admin_site_id =:admin_site_id', 'admin_site_id=1');
    $this->ResultadoPg = $paginacao->getResultado();

    $listar = new \Site\Models\helper\SiteRead();
    $listar->fullRead('SELECT id, titulo, descricao, imagem, slug, created FROM blog WHERE admin_site_id =:admin_site_id ORDER BY id DESC LIMIT :limit OFFSET :offset', "admin_site_id=1&limit={$this->LimiteResultado}&offset={$paginacao->getOffset()}");
    $this->Resultado = $listar->getResultado();
    return $this->Resultado;
  }

}