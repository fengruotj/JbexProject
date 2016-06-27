<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <link href="css/loginstyle.css" rel='stylesheet' type='text/css' />
    <!--webfonts-->
    <link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <!--新 Bootstrap时间选择器的 CSS 文件-->
    <link href="libs/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="libs/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="libs/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<script>$(document).ready(function(c) {
    $('.close').on('click', function(c){
        $('.login-form').fadeOut('slow', function(c){
            $('.login-form').remove();
        });
    });
});
</script>
<!--SIGN UP-->
<h1>登陆我的智慧校园</h1>
<div class="login-form">
    <div class="close"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>
    <div class="avtar">
        <img src="images/avtar.png" />
    </div>
    <form action="/loginUser" method="post">
        <input type="text" name="username" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
        <div class="key">
            <input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
        </div>
        <label class="label label-danger">${error!}</label>
        <br/>
        <div class="signin">
            <input id="loginUser" type="submit" value="Login" >
        </div>
    </form>
</div>
</body>
</html>
