<?php 
    if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
		//error_reporting(E_ALL);
		ini_set('display_errors', '1'); 
		include "../config/config.php";
		$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
		$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 10;
		$offset = ($page-1)*$rows;
		$result = array();


	    $Results = $db->query("select count(*) as rows  from sys_menu");
		$UsersC  = $Results->fetchALL();
		
		foreach ($UsersC as $conta){
			$contador=$conta->rows;
		}

		$result["total"] = $contador;
	    $Results2 = $db->query("select * from sys_menu limit $offset,$rows");
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