<?php

    if (!defined('URL')) {
        header('Location: /');
        exit();
    }

    //echo "View HOME <br>";

    //var_dump($this->Dados['carousels']);

?>

<section>
    <div id="carouselFade" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <?php 
            $cont_slide = 0;
            foreach ($this->Dados['carousels'] as $carousel) {
                extract($carousel);
                ?>   
                <div class="carousel-item <?php if($cont_slide == 0){echo 'active';} ?>">
                    <img class="d-block w-100" src="<?php echo URL . 'app/assets/img/carousel/'.$id.'/'.$imagem; ?>" alt="<?php echo $titulo; ?>">
                    <div class="container">
                        <div class="carousel-caption <?php echo $posicao_text; ?>">
                            <h1><?php echo $titulo; ?></h1>
                            <p><?php echo $descricao; ?></p>
                            <p><a class="btn btn-outline-<?php echo $cor; ?>" href="<?php echo $link; ?>" role="button"><?php echo $titulo_botao; ?></a></p>
                        </div>
                    </div>
                </div>
                <?php
                $cont_slide++;                
            }        
            ?>
        </div>
        <a class="carousel-control-prev" href="#carouselFade" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselFade" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>

<?php extract($this->Dados['solucoes'][0]) ?>
<section>
    <div class="jumbotron rounded-0 mb-0">
        <div class="container">
            <h2 class="text-center mb-5"><?php echo $titulo; ?></h2>
            <div class="card-deck">
                <div class="card text-center animation">
                    <i class="far fa-<?php echo $icone_1; ?> fa-10x mt-4"></i>
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $nome_1; ?></h5>
                        <p class="card-text text-muted"><?php echo $descricao_1; ?></p>
                    </div>
                </div>
                <div class="card text-center animation">
                    <i class="far fa-<?php echo $icone_2; ?> fa-10x mt-4"></i>
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $nome_2; ?></h5>
                        <p class="card-text text-muted"><?php echo $descricao_2; ?></p>
                    </div>
                </div>
                <div class="card text-center animation">
                    <i class="far fa-<?php echo $icone_3; ?> fa-10x mt-4"></i>
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $nome_3; ?></h5>
                        <p class="card-text text-muted"><?php echo $descricao_3; ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php extract($this->Dados['videos'][0]) ?>
<section>
    <div class="jumbotron rounded-0 mb-0">
        <div class="container animation">
            <h2 class="text-center mb-5"><?php echo $titulo; ?></h2>
            <div class="row justify-content-md-center">
                <div class="col-12 col-md-8">
                    <div class="embed-responsive embed-responsive-16by9">
                    <?php echo $video; ?>
                    </div>
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
                <?php foreach ($this->Dados['blog'] as $blog){
                    extract($blog);
                ?>
                    <div class="card animation">
                        <img class="card-img-top" src="<?php echo URL . 'app/assets/img/blog/'.$id.'/'.$imagem; ?>" alt="<?php echo $titulo; ?>">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $titulo; ?></h5>
                            <p class="card-text"><?php echo $descricao; ?></p>
                            <a class="btn btn-primary" href="<?php echo URL . 'blog'.$slug; ?>" role="button">+ ver mais</a>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>                    
        </div>
    </div>
</section>