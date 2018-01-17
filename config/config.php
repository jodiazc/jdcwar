<?php
	include("OBJ_mysql.php");

    $config = array();
    $config["hostname"]  = "localhost";
    $config["database"]  = "sag_new";
    $config["username"]  = "root";
    $config["password"]  = "";

    //other configurations
    $config["port"]      = "3306"; //defaults to 3306
    $config["charset"]    = "utf8"; //defaults to UTF-8
    $config["exit_on_error"] = "TRUE|FALSE"; //defaults to true
    $config["allow_logging"] = "TRUE|FALSE"; //defaults to true


    //class instantiation
    $db = new OBJ_mysql($config); 

    $sites['appName'] = 'Simagas';
    $sites['TOKEN'] = 'PclQNJdO56jv9gse4z29TUddXKHOQYn7';