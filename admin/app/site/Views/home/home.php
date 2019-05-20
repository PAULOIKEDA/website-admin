<?php

    if (!defined('URL')) {
        header('Location: /');
        exit();
    }

    echo "View HOME <br>";
    echo "<a href='".URLADM . "login/sair'> Sair </a>";

    //var_dump($this->Dados['carousels']);

?>