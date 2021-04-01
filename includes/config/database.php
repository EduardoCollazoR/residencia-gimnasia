<?php
function conectarDB(): mysqli
{
    $db = mysqli_connect('localhost', 'root', '', 'gym');

    if (!$db) {
        echo "Error no se pudo conectar";
        exit;
    }
    return $db;
}
