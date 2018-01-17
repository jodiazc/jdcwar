<?php
    if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
		include "../config/config.php";

	    $idMenu       =   $_REQUEST["IdMenu"];
	    $idPerfil   =   $_REQUEST["idPerfil"];
	    $id  =   $_REQUEST["id"];

		$sql = "update menu_perfil set idMenu='".$idMenu."',idPerfil='".$idPerfil."' where idMenuPerfil = $id"; 
		$db -> query($sql);

		echo json_encode(array( 'id' => $id ));
    }else{
        header("Location: ../login.php"); // Redirecting To Home Page
    }                                           			
