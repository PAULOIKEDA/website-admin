<form acttion="" method="POST" class="form-signin animation">
    <img class="mb-4 img-fluid w-50" src="<?php echo URLADM.'app/assets/img/logo-dalfre.png';?>" alt="">
    <h1 class="h3 mb-3 font-weight-normal">Login</h1>
    <?php
    if(isset( $_SESSION['msg'])) {
        echo  $_SESSION['msg'];
        unset( $_SESSION['msg']);
    }
    if(isset($this->Dados['form'])) {
        $valorForm = $this->Dados['form'];
    }
    ?>
    <input name="usuario" type="text" id="inputText" class="form-control" placeholder="usuário ou e-mail" required autofocus>
    <input name="senha" type="password" id="inputPassword" class="form-control my-2" placeholder="senha" required>
    <input name="enviarLogin" type="submit" value="Acessar" class="btn btn-lg btn-primary btn-block">
    <a class="btn btn-sm btn-outline-warning mt-2 float-left btn-block">Esqueceu sua senha?</a>
    <a href="<?php echo URLADM . 'login/novo' ?>" class="btn btn-sm btn-outline-success mt-2 float-right btn-block">Cadastrar</a>
</form>