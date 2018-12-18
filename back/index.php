<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8"/>
        <title>dalfre soluções</title>
    </head>
    <body>
        <?php

            require 'vendor/autoload.php';

            use Core\ConfigController as Home;

            $Url = new Home();
            $Url->carregar();

        ?>
    </body>
</html>