<?php 
    if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {	
		include "../config/config.php";

		$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
		$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 5;
		$offset = ($page-1)*$rows;
		$result = array();


	    $Results = $db->query("select count(idMenuPerfil) from menu_perfil");
		$UsersC  = $Results->fetchALL();
		$result["total"] = count($UsersC);
		//where ESTATUS in (0,1,2,3) $dates
	    $Results2 = $db->query("select idMenu,mp.IdPerfil,descripcion, menu from menu_perfil mp inner join perfiles p on p.idPerfil=mp.idPerfil  inner join sys_menu s on s.id = mp.idMenu limit $offset,$rows ");
		$Users  = $Results2->fetchALL();

		$items = array();
	 	if($Results2){
	 		foreach($Users as $user):
				array_push($items, $user);
	 		endforeach;
	 	}else{
	 		echo "No se encontraron datos";
	 		
	 	}
		$result["rows"] = $items;
		echo json_encode($result);
    }else{
        header("Location: ../login.php"); // Redirecting To Home Page
    }                                       	