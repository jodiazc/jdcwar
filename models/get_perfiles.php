<?php
    if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
    	include "../config/config.php";
        $Results = $db->query("select idPerfil as id, descripcion as text from perfiles order by descripcion");
        $data  = $Results->fetchAll();
        $result = array();
        $items = array();
        foreach($data as $datos){
    		array_push($items, $datos );
        }
    	$result = $items;
    	echo json_encode($result);
    }else{
        header("Location: ../login.php"); // Redirecting To Home Page
    }                                               