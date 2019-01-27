<?php

namespace Site\Models\helper;

if (!defined('URL')) {
    header('Location: /');
    exit();
}

class SitePagination {

  private $Link;
  private $MaxLinks;
  private $Pagina;
  private $Limite;
  private $Offset;
  private $Query;
  private $ParseString;
  private $ResultadoBD;
  private $Resultado;
  private $TotalPaginas;

  function getResultado() {
    return $this->Resultado;
  }

  function getOffset() {
    return $this->Offset;
  }
 
  function __construct($Link) {
    $this->Link = $Link;
    $this->MaxLinks = 2;
  }

  public function condicao($Pagina, $Limite) {
    $this->Pagina = (int) $Pagina ? $Pagina : 1;
    $this->Limite = (int) $Limite;
    $this->Offset = ($this->Pagina * $this->Limite) - $this->Limite;
  }

  public function paginacao($Query, $ParseString = null) {
    $this->Query = (string) $Query;
    $this->ParseString = (string) $ParseString;
    $contar = new \Site\Models\helper\SiteRead();
    $contar->fullRead($this->Query, $this->ParseString);
    $this->ResultadoBD = $contar->getResultado();
    if ($this->ResultadoBD[0]['num_result'] > $this->Limite) {
      $this->instrucaoPaginacao();
    }else{
      $this->Resultado = null;
    }
  }

  private function instrucaoPaginacao() {
    $this->TotalPaginas = ceil($this->ResultadoBD[0]['num_result'] / $this->Limite);
    if ($this->TotalPaginas >= $this->Pagina) {
      $this->layoutPaginacao();   
    }else{
      header("Location: {$this->Link}");
    }
  }

  private function layoutPaginacao() {
    $this->Resultado = "<nav aria-label='Page navigation example'>";
    $this->Resultado .= "<ul class='pagination justify-content-center mt-5'>";
    $this->Resultado .= "<li class='page-item'>";
    $this->Resultado .= "<a class='page-link' href=\"{$this->Link}\" tabindex='-1'>primeira</a>";
    $this->Resultado .= "</li>";
    for ($iPag = $this->Pagina - $this->MaxLinks; $iPag <= $this->Pagina - 1; $iPag++) {
      if ($iPag >= 1) {
        $this->Resultado .= "<li class='page-item'><a class='page-link' href=\"{$this->Link}?pg={$iPag}\">$iPag</a></li>";
      }     
    }
    $this->Resultado .= "<li class='page-item active'><a class='page-link' href='#'>{$this->Pagina}<span class='sr-only'>(current)</span></a></li>";
    for ($dPag = $this->Pagina + 1; $dPag <= $this->Pagina + $this->MaxLinks; $dPag++) {
      if ($dPag <= $this->TotalPaginas) {
        $this->Resultado .= "<li class='page-item'><a class='page-link' href=\"{$this->Link}?pg={$dPag}\">$dPag</a></li>";
      }      
    }
    $this->Resultado .= "<li class='page-item'>";
    $this->Resultado .= "<a class='page-link' href=\"{$this->Link}?pg={$this->TotalPaginas}\">última</a>";
    $this->Resultado .= "</li>";
    $this->Resultado .= "</ul>";
    $this->Resultado .= "</nav>";
  }

}