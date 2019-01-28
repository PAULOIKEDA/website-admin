<?php

namespace Site\Models;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class Menu {
  private $Resultado;

  public function listarMenu() {
    $listar_menu = new \Site\Models\helper\SiteRead();
    $listar_menu->fullRead('SELECT id, controller, nome_pagina, endereco FROM paginas WHERE ativa =:ativa AND estado_pagina_id =:estado_pagina_id ORDER BY ordem ASC', "ativa=1&estado_pagina_id=1");
    $this->Resultado = $listar_menu->getResultado();
    return $this->Resultado;
  }
}