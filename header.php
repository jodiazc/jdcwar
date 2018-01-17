<?php
  //include "conn.php";
  include "funciones.php";
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $sites['appName']; ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" type="text/css" href="bower_components/easyui/themes/default/easyui.css">
  <link rel="stylesheet" type="text/css" href="bower_components/easyui/themes/icon.css">
  <link rel="stylesheet" type="text/css" href="bower_components/easyui/themes/color.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <!-- jQuery 3 -->
  <script src="bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- SlimScroll -->
  <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="dist/js/demo.js"></script>
  <script type="text/javascript" src="bower_components/easyui/jquery.easyui.min.js"></script>  
  <script>
    //$(document).ready(function () { $('.sidebar-menu').tree()  })
  </script>  
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>S</b>GAS</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>SIMA</b>GAS</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs"><?php echo $_SESSION["name"]; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  <?php echo $_SESSION["name"]; ?>
                  <!--small>Member since Nov. 2012</small-->
                </p>
              </li>
              <!-- Menu Body -->
              <!--li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>
                <!-- /.row -->
              </li-->
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <!--a href="#" class="btn btn-default btn-flat">Profile</a-->
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Cerrar Sesión</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <!--li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li-->
        </ul>
      </div>
    </nav>
  </header>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $_SESSION["name"]; ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <?php
          $menu = $db->query("SELECT * FROM sys_menu s inner join menu_perfil mp on mp.idMenu=s.id where is_visible=1 and is_main_menu=0 and mp.idPerfil =". $_SESSION["perfil"]);
          $main_menu  = $menu->fetchALL();          
          foreach ($main_menu as $main) {
            $submenu = $db->query("SELECT * FROM sys_menu s inner join menu_perfil mp on mp.idMenu=s.id where is_visible=1 and is_main_menu=".$main->id." and mp.idPerfil =". $_SESSION["perfil"]); 
            $sub_menu  = $submenu->fetchALL();          
            if($sub_menu){
              //echo "<li class='treeview'><a href='#'>".$main->menu."</a>" ;
              echo "<li class='treeview'><a href='".$main->link."'><i class='".$main->icon."'></i> <span>".$main->menu."</span><span class='pull-right-container'><i class='fa fa-angle-left pull-right'></i></span></a>";
              echo "<ul class='treeview-menu'>";
              foreach ($sub_menu as $sub) {
                echo "<li>";
                echo "<a href='".$sub->link."'><i class='".$sub->icon."'></i> <span>".$sub->menu."</span></a>";
                echo "</li>";
              }
              echo"</ul></li>";
            }else{
              echo "<li><a href='".$main->link."'><i class='".$main->icon."'></i> <span>".$main->menu."</span></a></li>";
            }  
          }
        ?>                
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  <!-- =============================================== -->