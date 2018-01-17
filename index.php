<?php
    /*$mi_temporizador = microtime();
    $partes_de_la_hora_actual = explode(' ', $mi_temporizador);
    $hora_actual = $partes_de_la_hora_actual[1] + $partes_de_la_hora_actual[0];
    $hora_al_empezar = $hora_actual;*/

session_start();
if ($_SESSION["perfil"] <> ""){
    include "config/config.php";   
    include "header.php";

    if(isset($_REQUEST['action'])){ $action = $_REQUEST["action"];}else{ $action = ""; }     

    switch ($action) {
        case "search_banks":
            include "views/search_banks.php";
            break;
        case "menu_add":
            include "views/menu_add.php";
            break;
        case "profile_Add":
            include "views/profile_Add.php";
            break;                        
        case "user_add":
            include "views/users_add.php";
            break;        
        default:
            include "egresos.php";
    }
    include "footer.php";
}else{
    header("Location: login.php"); // Redirecting To Home Page
}    
    /*$mi_temporizador = microtime();
    $partes_de_la_hora_actual = explode(' ', $mi_temporizador);
    $hora_actual = $partes_de_la_hora_actual[1] + $partes_de_la_hora_actual[0];
    $hora_al_terminar = $hora_actual;
    $tiempo_total_en_segundos = round(($hora_al_terminar - $hora_al_empezar), 4);
    echo 'La pagina fue generada en '.$tiempo_total_en_segundos.' segundos.';*/