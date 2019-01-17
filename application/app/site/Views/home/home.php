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

<?php echo($this->Dados['solucoes']); ?>