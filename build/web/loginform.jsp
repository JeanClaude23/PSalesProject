<%-- 
    Document   : loginform
    Created on : Sep 27, 2021, 2:54:58 PM
    Author     : JClaude
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>pos | Log in</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition login-page" style="background-image: url('images/signup.jpg'); background-size: cover;">
        <div class="login-box">
            <div class="login-logo">
                <a href="loginform.jsp" style="color: black;">Point of Sale</a>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">

                <div id="showResult" style="font-family: monospace;"></div>

                <form id="signIn" action="http://localhost:8080/PSalesProject/api/users/login" method="POST">
                    <div class="form-group has-feedback">
                        <input type="email" id="getemail" name="email" class="form-control" placeholder="Email">
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" id="getpassword" name="password" class="form-control" placeholder="Password">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <!-- /.col -->
                        <div class="col-xs-12">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>

                <center><a href="registerForm.jsp" class="text-center font-monospace">Register New Membership</a></center>

            </div>
            <!-- /.login-box-body -->
        </div>
        <!-- /.login-box -->

        <!-- jQuery 3 -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="plugins/iCheck/icheck.min.js"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' /* optional */
                });
            });
        </script>
        <script>
//            //Account acc = new Account();
//            //let email=document.getElementById("getemail").trim();
//            //let password=document.getElementById("getpassword").trim();
//            $("#signIn").on('submit', (function (e) {
//                e.preventDefault();
//                $.ajax({
//                    //url: "http://localhost:8080/PSalesProject/users",
//                    url: "http://localhost:8080/PSalesProject/api/users/login",
//                    type: "POST",
//                    data: $('#signIn').serialize(),
//                    processData: false,
//                    success: function (data) {
//                        var result = $.trim(data);
//                        if (result === 'login') {
//                            window.location.replace("categoryForm.jsp");
//                        } else {
//                            $('#showResult').addClass('alert alert-warning');
//                            $('#showResult').html(data).fadeIn().delay(2000).fadeOut();
//                        }
//                    },
//                    error: function (err) {
//
//                        $('#showResult').addClass('alert alert-warning');
//                        $('#showResult').html(err).fadeIn().delay(2000).fadeOut();
//                    }
//                })
//            }));
        </script> 
    </body>
</html>