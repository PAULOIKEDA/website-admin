<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand w-25" href="#">
                <img src="<?php echo URL; ?>app/assets/img/logo-dalfre.png" class="img-fluid">
            </a>  
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>                  
            <div class="collapse navbar-collapse" id="navbarToggler">
                <ul class="navbar-nav ml-auto ">
                    <?php
                        foreach($this->Dados['menu'] as $menu) {
                            extract($menu);
                            ?>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo URL.$nome_pagina; ?>"><?php echo $nome_pagina; ?></a>
                            </li>
                        <?php
                        }
                    ?>
                </ul>
            </div>
        </div>            
    </nav>
</header>