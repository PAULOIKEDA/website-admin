<form acttion="" method="POST" class="form-signin animation">
    <img class="mb-4 img-fluid w-50" src="<?php echo URLADM.'app/assets/img/logo-dalfre.png';?>" alt="">
    <h1 class="h3 mb-3 font-weight-normal">Cadastrar novo usuário</h1>
    <?php
    if(isset( $_SESSION['msg'])) {
        echo  $_SESSION['msg'];
        unset( $_SESSION['msg']);
    }
    if(isset($this->Dados['form'])) {
        $valorForm = $this->Dados['form'];
    }
    ?>
    <input name="nome" type="text" id="inputText" class="form-control" placeholder="nome" required autofocus>
    <input name="email" type="text" id="inputText" class="form-control mt-2" placeholder="e-mail" required autofocus>
    <input name="usuario" type="text" id="inputText" class="form-control mt-2" placeholder="usuário" required autofocus>
    <input name="senha" type="password" id="inputPassword" class="form-control mt-2" placeholder="senha" required>
    <input name="novoUser" type="submit" value="Cadastrar" class="btn btn-lg btn-success btn-block">
    <a href="<?php echo URLADM . 'login/entrar' ?>" class="btn btn-sm btn-outline-primary mt-2 float-right btn-block">Voltar</a>
</form>