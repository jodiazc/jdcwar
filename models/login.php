<?php 
	if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
		include "../config/config.php";
	    $user = $_REQUEST["name"];
	    $password = md5($sites['TOKEN'] . $_REQUEST["pwd"]);
	    
	    $Results = $db->query("select * from users where user='".$user."' and password='".$password."' ");
		$Users  = $Results->fetchALL();

	 	if($Results){
	 		foreach($Users as $user):
				session_start();
				$_SESSION["perfil"] = $user->idPerfil;
				$_SESSION["user_id"] = $user->userId;
				$_SESSION["name"] = $user->nombre." ".$user->apellidop." ".$user->apellidom;
				$_SESSION['userSession'] = $user->userId;
				echo "true";
	 		endforeach;
	 	}else{
	 		echo "No se encontraron datos";
	 	}	
	}else{
		header("Location: ../login.php"); // Redirecting To Home Page
	}
