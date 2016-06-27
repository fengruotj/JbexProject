<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>chinaz</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="libs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">智慧校园</a>
        </div>

        <div class="header-right">

            <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>
            <a href="message-task.html" class="btn btn-primary" title="New Task"><b>40 </b><i class="fa fa-bars fa-2x"></i></a>
            <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

        </div>
    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <div class="user-img-div">
                        <img src="userimages/${user.picture}" class="img-thumbnail" />

                        <div class="inner-text">
                            ${user.userNickname}
                            <br />
                            <small>Last Login : 1 Days Ago </small>
                        </div>
                    </div>

                </li>


                <li>
                    <a class="active-menu" href="#"><i class="fa fa-dashboard "></i>控制面板</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop "></i>结伴而行<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="/send_user_jbexinfo"><i class="fa fa-toggle-on"></i>查看我的结伴而行信息</a>
                        </li>

                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>社团信息<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="/send_user_publicinfo"><i class="fa fa-coffee"></i>查看我的校园社团信息</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="send_"><i class="fa fa-flash "></i>我的收藏</a>

                </li>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-head-line">控制面板</h1>
                    <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>

                </div>
            </div>
            <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-4">
                    <div class="main-box mb-red">
                        <a href="#">
                            <i class="fa fa-bolt fa-5x"></i>
                            <h5>社团信息发布</h5>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="main-box mb-dull">
                        <a href="#">
                            <i class="fa fa-plug fa-5x"></i>
                            <h5>学校信息发布</h5>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="main-box mb-pink">
                        <a href="#">
                            <i class="fa fa-dollar fa-5x"></i>
                            <h5>信息查收</h5>
                        </a>
                    </div>
                </div>

            </div>
            <!-- /. ROW  -->

            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">

                            <div id="reviews" class="carousel slide" data-ride="carousel">

                                <div class="carousel-inner">
                                    <div class="item active">

                                        <div class="col-md-10 col-md-offset-1">

                                            <h4><i class="fa fa-quote-left"></i>今晚将在北宗101集体练琴！请社员七点半准时参加！ <i class="fa fa-quote-right"></i></h4>
                                            <div class="user-img pull-right">
                                                <img src="images/user.gif" alt="" class="img-u image-responsive" />
                                            </div>
                                            <h5 class="pull-right"><strong class="c-black">吉他社社长</strong></h5>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="col-md-10 col-md-offset-1">

                                            <h4><i class="fa fa-quote-left"></i>请合唱团的所有团员今晚在大活二楼开会。<i class="fa fa-quote-right"></i></h4>
                                            <div class="user-img pull-right">
                                                <img src="images/user.png" alt="" class="img-u image-responsive" />
                                            </div>
                                            <h5 class="pull-right"><strong class="c-black">合唱团负责人</strong></h5>
                                        </div>

                                    </div>
                                    <div class="item">
                                        <div class="col-md-10 col-md-offset-1">

                                            <h4><i class="fa fa-quote-left"></i>今晚到荷花池旁一起练习~ <i class="fa fa-quote-right"></i></h4>
                                            <div class="user-img pull-right">
                                                <img src="images/user.gif" alt="" class="img-u image-responsive" />
                                            </div>
                                            <h5 class="pull-right"><strong class="c-black">笛箫社</strong></h5>
                                        </div>
                                    </div>
                                </div>
                                <!--INDICATORS-->
                                <ol class="carousel-indicators">
                                    <li data-target="#reviews" data-slide-to="0" class="active"></li>
                                    <li data-target="#reviews" data-slide-to="1"></li>
                                    <li data-target="#reviews" data-slide-to="2"></li>
                                </ol>
                                <!--PREVIUS-NEXT BUTTONS-->

                            </div>

                        </div>

                    </div>
                    <!-- /. ROW  -->
                    <hr />

                    <div class="panel panel-default">

                        <div id="carousel-example" class="carousel slide" data-ride="carousel" style="border: 5px solid #000;">

                            <div class="carousel-inner">
                                <div class="item active">

                                    <img src="images/slideshow/1.jpg" alt="" />

                                </div>
                                <div class="item">
                                    <img src="images/slideshow/2.jpg" alt="" />

                                </div>
                                <div class="item">
                                    <img src="images/slideshow/3.jpg" alt="" />

                                </div>
                            </div>
                            <!--INDICATORS-->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example" data-slide-to="1"></li>
                                <li data-target="#carousel-example" data-slide-to="2"></li>
                            </ol>
                            <!--PREVIUS-NEXT BUTTONS-->
                            <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.REVIEWS &  SLIDESHOW  -->
                <div class="col-md-4">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            最新学校活动
                        </div>
                        <div class="panel-body" style="padding: 0px;">
                            <div class="chat-widget-main">


                                <div class="chat-widget-left">
                                    6.24号教三101数学讲座
                                </div>
                                <div class="chat-widget-name-left">
                                    <h4>王后雄</h4>
                                </div>
                                <div class="chat-widget-right">
                                    6.23号北综110英语辅导
                                </div>
                                <div class="chat-widget-name-right">
                                    <h4>刘老师 </h4>
                                </div>
                                <div class="chat-widget-left">
                                    6.21号西区体育馆信工篮球联赛
                                </div>
                                <div class="chat-widget-name-left">
                                    <h4>团学联</h4>
                                </div>
                                <div class="chat-widget-right">
                                    6.19号弘毅堂讲座
                                </div>
                                <div class="chat-widget-name-right">
                                    <h4>许德华 </h4>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Enter Message" />
                                    <span class="input-group-btn">
                                        <button class="btn btn-success" type="button">SEND</button>
                                    </span>
                            </div>
                        </div>
                    </div>


                </div>
                <!--/.Chat Panel End-->
            </div>
            <!-- /. ROW  -->


            <div class="row">

                <div class="col-md-8">
                    <div class="list-group">
                        <a href="#" class="list-group-item active">
                            <h4 class="list-group-item-heading">返回顶部</h4>
                        </a>
                    </div>
                    <br />
                    <!-- 16:9 aspect ratio -->
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="//www.youtube.com/embed/zpOULjyy-n8?rel=0"></iframe>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i>通知
                        </div>

                        <div class="panel-body">
                            <div class="list-group">

                                <a href="#" class="list-group-item">
                                    <i class="fa fa-twitter fa-fw"></i>3个新粉丝
                                    <span class="pull-right text-muted small"><em>12 minutes ago</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-envelope fa-fw"></i>信息发送
                                    <span class="pull-right text-muted small"><em>27 minutes ago</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-tasks fa-fw"></i>新信息
                                    <span class="pull-right text-muted small"><em>43 minutes ago</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-upload fa-fw"></i>服务端口
                                    <span class="pull-right text-muted small"><em>11:32 AM</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-bolt fa-fw"></i>请求成功
                                    <span class="pull-right text-muted small"><em>11:13 AM</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-warning fa-fw"></i>请求未响应
                                    <span class="pull-right text-muted small"><em>10:57 AM</em>
                                    </span>
                                </a>

                                <a href="#" class="list-group-item">
                                    <i class="fa fa-bolt fa-fw"></i>请求成功
                                    <span class="pull-right text-muted small"><em>11:13 AM</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-warning fa-fw"></i>请求未响应
                                    <span class="pull-right text-muted small"><em>10:57 AM</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-shopping-cart fa-fw"></i>新消息
                                    <span class="pull-right text-muted small"><em>9:49 AM</em>
                                    </span>
                                </a>
                            </div>
                            <!-- /.list-group -->
                            <a href="#" class="btn btn-info btn-block">查看全部</a>
                        </div>

                    </div>
                </div>
            </div>
            <!--/.Row-->





            <div class="row" style="padding-bottom: 100px; `">
                <div class="col-md-6">
                    <div id="comments-sec">
                        <h4><strong>社团认证</strong></h4>
                        <hr />


                        <div class="form-group  ">
                            <label>请输入社团名字</label>
                            <input type="text" class="form-control" required="required" placeholder="Enter Subject Of Ticket" />
                        </div>
                        <div class="form-group ">
                            <label>请输入社团简介</label>
                            <textarea class="form-control" rows="8"></textarea>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-success">提交</button>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="panel panel-back noti-box">
                            <span class="icon-box bg-color-black">
                                <i class="fa fa-bicycle"></i>
                            </span>


                        <div class="text-box">
                            <p class="main-text">社团认证须知</p>
                            <hr />
                            <p>
                                    <span class=" color-bottom-txt"><i class="fa fa-edit"></i>
                                        社团简介不少于50字，并且留下社团负责人的姓名及电话 . 如 （夏浩，13511111111）

                                    </span>

                            </p>
                            <hr />
                            请输入真实的社团信息！
                        </div>
                    </div>
                </div>
            </div>
            <!--/.ROW-->

        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->

<div id="footer-sec">
    Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
</div>
<!-- /. FOOTER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="libs/jquery/jquery-2.0.0.min.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="libs/bootstrap/js/bootstrap.min.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="js/usercustom.js"></script>



</body>
</html>
