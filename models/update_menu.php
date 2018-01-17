<?php
    //if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

		error_reporting(E_ALL);
		ini_set('display_errors', '0'); 
		include "../config/config.php";
	    $menu       =   $_REQUEST["menu"];
	    $link   =   $_REQUEST["link"];
	    $icon     =   $_REQUEST["icon"];
	    $is_main_menu  =   $_REQUEST["is_main_menu"];
	    $is_visible  =   $_REQUEST["is_visible"];
	    $id  =   $_REQUEST["id"];

		$sql = "update sys_menu set menu='".$menu."',link='".$link."',icon='".$icon."',is_main_menu='".$is_main_menu."',is_visible='".$is_visible."' where id = $id"; 
		$db -> query($sql);

		echo json_encode(array( 'id' => $id ));

    //}else{
    //    header("Location: ../login.php"); // Redirecting To Home Page
    //}                                           	