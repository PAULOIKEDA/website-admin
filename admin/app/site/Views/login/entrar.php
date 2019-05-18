<!doctype html>
<html lang="pt-br">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>dalfre soluções</title>

        <link rel="stylesheet" href="<?php echo URLADM.'app/assets/css/bootstrap.css';?>">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <link rel="stylesheet" href="<?php echo URLADM.'app/assets/css/login.css';?>">
        <link rel="icon" href="<?php echo URLADM.'app/assets/img/favicon.ico';?>">

    </head>

    <body class="text-center">

        <form acttion="" method="POST" class="form-signin animation">
            <img class="mb-4 img-fluid w-50" src="<?php echo URLADM.'app/assets/img/logo-dalfre.png';?>" alt="">
            <h1 class="h3 mb-3 font-weight-normal">Painel Administrativo</h1>
            <?php
            if(isset( $_SESSION['msg'])) {
                echo  $_SESSION['msg'];
                unset( $_SESSION['msg']);
            }
            if(isset($this->Dados['form'])) {
                $valorForm = $this->Dados['form'];
            }
            ?>
            <input name="usuario" value="<?php if($valorForm['usuario']){echo $valorForm['usuario'];} ?>" type="text" id="inputText" class="form-control" placeholder="usuário ou e-mail" required autofocus>
            <input name="senha" type="password" id="inputPassword" class="form-control my-2" placeholder="senha" required>
            <input name="enviarLogin" type="submit" value="Acessar" class="btn btn-lg btn-primary btn-block">
            <button type="button" class="btn btn-link">Esqueceu sua senha?</button>
        </form>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="<?php echo URLADM.'app/assets/js/bootstrap.min.js';?>"></script>
        <script src="https://unpkg.com/scrollreveal"></script>
        <script src="<?php echo URLADM.'app/assets/js/scripts.js';?>"></script>

    </body>   
</html>
