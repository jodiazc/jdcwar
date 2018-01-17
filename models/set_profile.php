<?php
    //if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
    	include "../config/config.php";

        $idMenu       =   $_REQUEST["IdMenu"];
        $idPerfil   =   $_REQUEST["idPerfil"];

        $new_user_id = $db->insert('menu_perfil', array(
                                //'userId' => $userId,
                                'idMenu' =>   $idMenu,
                                'idPerfil' => $idPerfil,
                                )
                              );

        if($new_user_id){
            echo json_encode($new_user_id);
        }
    //}else{
    //    header("Location: ../login.php"); // Redirecting To Home Page
    //}                                                   	
        