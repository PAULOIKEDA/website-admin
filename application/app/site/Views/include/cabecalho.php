<!DOCTYPE html>
<html lang="pt-br">
    <head>

        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <?php
            if (!empty($this->Dados['seo'][0])) {
                extract($this->Dados['seo'][0]);
                echo "<title>$titulo</title>";
                echo "<link rel='canonical' href='".URL."$endereco'>";
                echo "<meta name='robots' content='$tipo_rob'>";
                echo "<meta name='description' content='$description'>";
                echo "<meta name='author' content='$author'>";
                echo "<meta name='keywords' content='$keywords'>";                
                echo "<meta property='og:site_name' content='$og_site_name'>";
                echo "<meta property='og:locale' content='$og_locale'>";
                echo "<meta property='fb:admins' content='$fb_admins'>";
                echo "<meta property='og:url' content='".URL."$endereco'>";
                echo "<meta property='og:title' content='$titulo'>";                
                echo "<meta property='og:description' content='$description'>";
                echo "<meta property='og:image' content='".URL."app/assets/img/pagina/$id/$imagem'>";              
            }
        ?>
        <link rel="icon" href="<?php echo URL; ?>app/assets/img/icon/favicon.ico">
        <link rel="stylesheet" href="<?php echo URL; ?>app/assets/css/bootstrap.css">
        <link rel="stylesheet" href="<?php echo URL; ?>app/assets/css/styles.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        
    </head>
    <body>