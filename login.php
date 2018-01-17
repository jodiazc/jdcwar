
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Simagas | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>SIMAGAS</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg"></p>

    <form action="../../index2.html" method="post">
      <div class="form-group has-feedback">
        <input id="username" name="username" type="email" class="form-control" placeholder="Usuario">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input id="password" name="password" type="password" class="form-control" placeholder="Contraseña">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="button" id="login" class="btn btn-primary btn-block btn-flat">Entrar</button>
        </div>
        <!-- /.col -->
      </div>
    </form>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

  <script src="bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <script>
  $(document).ready(function(){
   $("#login").click(function(){  
          username=$("#username").val();
          password=$("#password").val();
        $.ajax({
         type: "POST",
         url: "models/login.php",
        data: "name="+username+"&pwd="+password,
         success: function(html){    
        if(html=='true')    {
         //$("#add_err").html("right username or password");
         window.location="index.php";
        }
        else    {
          $("#add_err").css('display', 'inline', 'important');
          $("#add_err").html("<img src='images/alert.png' />Wrong username or password");
        }
         },
         beforeSend:function()
         {
        $("#add_err").css('display', 'inline', 'important');
        $("#add_err").html("<img src='images/ajax-loader.gif' /> Loading...")
         }
        });
      return false;
    });
  });
  </script>
</body>
</html>