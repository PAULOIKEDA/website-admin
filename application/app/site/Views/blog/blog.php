<section>
  <div class="jumbotron rounded-0 mb-0">
      <div class="container">
          <h2 class="text-center mb-5">blog</h2>
          <div class="row">
                <?php
                if (empty($this->Dados['blog'])) {
                    echo "<div class='alert alert-danger'>Não há nenhum post publicado.</div>";
                }                
                foreach ($this->Dados['blog'] as $blog) {
                    extract($blog);
                    ?>
                        <div class="col-lg-4 mt-3">
                            <div class="card-deck">
                                <div class="card animation">
                                    <img class="card-img-top" src="<?php echo URL . 'app/assets/img/blog/'.$id.'/'.$imagem; ?>" alt="<?php echo $titulo; ?>">
                                    <div class="card-body">
                                        <h5 class="card-title"><?php echo $titulo; ?></h5>
                                        <p class="card-text"><?php echo $descricao; ?></p>
                                        <a class="btn btn-primary" href="<?php echo URL . 'noticia/' . $slug; ?>" role="button">+ ver mais</a>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted"><?php echo date('d/m/Y', strtotime($created)); ?></small>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    <?php
                    }
                ?>
                
          </div>                    
      </div>

        <?php echo $this->Dados['paginacao']; ?>

  </div>
</section>