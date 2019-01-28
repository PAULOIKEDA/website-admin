<section>
  <div class="jumbotron rounded-0 mb-0">
      <div class="container">
          <div class="row">
              <div class="col-lg-8">
                <?php
                  if (!empty($this->Dados['blog'][0])) {
                    extract(($this->Dados['blog'][0]));
                    ?>
                    <h3><?php echo $titulo; ?></h3>
                    <small class="text-muted">publicado em <?php echo date('d/m/Y', strtotime($created)); ?></small>
                    <img src="<?php echo URL . 'app/assets/img/blog/'.$id.'/'.$imagem; ?>" alt="<?php echo $titulo; ?>" class="img-fluid my-4">
                    <?php echo $conteudo; ?>
                  <?php                    
                  }
                ?>                  
              </div>
              <div class="col-lg-4 text-center">
                  <h4>sobre o autor</h4>
                  <?php extract($this->Dados['blog'][0]) ?>
                  <img src="<?php echo URL . 'app/assets/img/blog/'.$id.'/'.$imagem_autor; ?>" alt="<?php echo $titulo; ?>" class="rounded-circle my-4">
                  <h5><?php echo $autor; ?></h5>
                  <p><?php echo $descricao_autor ?></p>
                  <hr>
                  <h4 class="mb-3">mais lidas</h4>
                  <?php foreach ($this->Dados['blog_destaques'] as $blog_destaques){
                      extract($blog_destaques);
                  ?>                      
                      <a href="<?php echo URL . 'noticia/'.$slug; ?>">
                        <img src="<?php echo URL . 'app/assets/img/blog/'.$id.'/'.$imagem; ?>" alt="<?php echo $titulo; ?>" class="rounded w-50">
                        <h5 class="mb-4"><?php echo $titulo; ?></h5> 
                      </a>
                  <?php
                  }
                  ?>
              </div>
          </div>
      </div>
  </div>
</section>

<section>
  <div class="jumbotron rounded-0 mb-0">
      <div class="container">
          <h2 class="text-center mb-5">últimas do blog</h2>
          <div class="card-deck">
            <?php foreach ($this->Dados['blog_ultimas'] as $blog_ultimas){
                extract($blog_ultimas);
            ?>
                <div class="card animation">
                    <img class="card-img-top" src="<?php echo URL . 'app/assets/img/blog/'.$id.'/'.$imagem; ?>" alt="<?php echo $titulo; ?>">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $titulo; ?></h5>
                        <p class="card-text"><?php echo $descricao; ?></p>
                        <a class="btn btn-primary" href="<?php echo URL . 'noticia/'.$slug; ?>" role="button">+ ver mais</a>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted"><?php echo date('d/m/Y', strtotime($created)); ?></small>
                    </div>
                </div>
            <?php
            }
            ?>
          </div>                    
      </div>
  </div>
</section>