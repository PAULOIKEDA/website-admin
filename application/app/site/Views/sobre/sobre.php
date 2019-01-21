<?php extract($this->Dados['sobre'][0]) ?>
<section>
  <div class="jumbotron rounded-0 mb-0">
      <div class="container">
        <h2 class="text-center mb-5"><?php echo $titulo; ?></h2>
        <p><?php echo $descricao; ?></p>
        <div class="card-deck">
          <div class="card text-center animation">
              <i class="far fa-<?php echo $icone_1; ?> mt-4"></i>
              <div class="card-body">
                  <h5 class="card-title"><?php echo $nome_1; ?></h5>
                  <p class="card-text text-muted"><?php echo $descricao_1; ?></p>
              </div>
          </div>
          <div class="card text-center animation">
              <i class="far fa-<?php echo $icone_2; ?> mt-4"></i>
              <div class="card-body">
                  <h5 class="card-title"><?php echo $nome_2; ?></h5>
                  <p class="card-text text-muted"><?php echo $descricao_2; ?></p>
              </div>
          </div>
          <div class="card text-center animation">
              <i class="far fa-<?php echo $icone_3; ?> mt-4"></i>
              <div class="card-body">
                  <h5 class="card-title"><?php echo $nome_3; ?></h5>
                  <p class="card-text text-muted"><?php echo $descricao_3; ?></p>
              </div>
          </div>
        </div>
      </div>
  </div>
</section>