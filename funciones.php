<?php
ini_set('memory_limit', '-1');

function getMenu() {
    global $db;
    $Results = $db->query("select * from r_menu where is_visible=1 order by urutan");
    $data  = $Results->fetchAllArray();
    //echo "<ul class='sidebar-menu' data-widget='tree'>";
    $stat=array();
    $stat[0]=true;
    $stat[1]=$data;
    //echo "<pre>";var_dump($stat);echo "</pre>";     
    return $stat;
}
function getSubMenu($id) {
    global $db;
    $Results = $db->query("select * from r_menu_sub where id_menu = ".$id." and is_visible=1 order by urutan_sub_menu asc");
    $data  = $Results->fetchAllArray();
    //echo "<ul class='sidebar-menu' data-widget='tree'>";
    $stat=array();
    $stat[0]=true;
    $stat[1]=$data;
    //echo "<pre>";var_dump($stat);echo "</pre>";     
    return $stat;
}
function getSubMenuLevel2($id) {
    global $db;
    $Results = $db->query("select * from r_menu_sub_level_2 where id_sub_menu = ".$id." order by urutan_sub_menu asc");
    $data  = $Results->fetchAllArray();
    //echo "<ul class='sidebar-menu' data-widget='tree'>";
    $stat=array();
    $stat[0]=true;
    $stat[1]=$data;
    //echo "<pre>";var_dump($stat);echo "</pre>";     
    return $stat;
}
//getMenu();
?>