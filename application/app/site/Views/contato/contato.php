<section>
  <div class="jumbotron rounded-0 mb-0">
      <div class="container">
          <h2 class="text-center mb-5">contato</h2>
          <?php 
            if(isset($_SESSION['msg'])) {
              echo $_SESSION['msg'];
              unset($_SESSION['msg']);
            }
            if(isset($this->Dados['form'])) {
              $valorForm = $this->Dados['form'];
            }
          ?>
          <form method="POST" action="">
              <div class="form-row">
                  <div class="form-group col-md-6">
                      <label for="inputName">Nome</label>
                      <input type="text" class="form-control" name="nome" id="inputName" value="<?php if(isset($valorForm['nome'])) {echo $valorForm['nome'];} ?>">
                  </div>
                  <div class="form-group col-md-6">
                      <label for="inputEmail">E-mail</label>
                      <input type="email" class="form-control" name="email" id="inputEmail" value="<?php if(isset($valorForm['email'])) {echo $valorForm['email'];} ?>">
                  </div>
              </div>
              <div class="form-group">
                  <label for="inputAddress">Endereço</label>
                  <input type="text" class="form-control" name="endereco" id="inputAddress" value="<?php if(isset($valorForm['endereco'])) {echo $valorForm['endereco'];} ?>">
              </div>
              <div class="form-row">
                  <div class="form-group col-md-6">
                      <label for="inputCity">Cidade</label>
                      <input type="text" class="form-control" name="cidade" id="inputCity" value="<?php if(isset($valorForm['cidade'])) {echo $valorForm['cidade'];} ?>">
                  </div>
                  <div class="form-group col-md-4">
                      <label for="inputState">Estado</label>
                      <select id="inputState" name="estado" class="form-control" value="<?php if(isset($valorForm['estado'])) {echo $valorForm['estado'];} ?>">
                          <option selected>Selecione.</option>
                          <option>PR</option>
                          <option>SC</option>
                          <option>RS</option>
                      </select>
                  </div>
                  <div class="form-group col-md-2">
                      <label for="inputZip">CEP</label>
                      <input type="text" name="cep" class="form-control" id="inputZip" value="<?php if(isset($valorForm['cep'])) {echo $valorForm['cep'];} ?>">
                  </div>
              </div>
              <div class="form-row">
                  <div class="form-group col-md-10">
                      <label for="textarea">Deixe sua mensagem</label>
                      <textarea class="form-control" name="mensagem" id="textarea" rows="3"><?php if(isset($valorForm['mensagem'])) {echo $valorForm['mensagem'];} ?></textarea>
                  </div>
                  <div class="col-md-2 align-self-center">
                      <input type="hidden" name="created" value="<?php echo date("Y-m-d H:i:s") ?>">
                      <input type="submit" class="btn btn-block btn-lg btn-primary" name="EnviaContato" value="Enviar">
                  </div>
              </div>
          </form>
      </div>
  </div>
</section>