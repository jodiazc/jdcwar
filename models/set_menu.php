<?php
    //if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
    	include "../config/config.php";

        $menu       =   $_REQUEST["menu"];
        $link   =   $_REQUEST["link"];
        $icon     =   $_REQUEST["icon"];
        $is_main_menu  =   $_REQUEST["is_main_menu"];
        $is_visible  =   $_REQUEST["is_visible"];

        $new_user_id = $db->insert('sys_menu', array(
                                //'userId' => $userId,
                                'menu' =>   $menu,
                                'link' => $link,
                                'icon' => $icon,
                                'is_main_menu' => $is_main_menu,
                                'is_visible' => $is_visible,       
                                )
                              );

        if($new_user_id){
            echo json_encode($new_user_id);
        }
    //}else{
    //    header("Location: ../login.php"); // Redirecting To Home Page
    //}                                           	