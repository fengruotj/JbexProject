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

    <style type="text/css">
        #search {
            margin-top: 6;
        }
        #fm{
            margin:0;
            padding:10px 30px;
        }
        .ftitle{
            font-size:14px;
            font-weight:bold;
            color:#666;
            padding:5px 0;
            margin-bottom:10px;
            border-bottom:1px solid #ccc;
        }
        .fitem{
            margin-bottom:5px;
        }
        .fitem label{
            display:inline-block;
            width:80px;
        }
    </style>

    <#include "../public/maphead.ftl">
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
            <a class="navbar-brand" href="/send_user_index">智慧校园</a>
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
                    <a class="active-menu" href="/send_user_index"><i class="fa fa-dashboard "></i>控制面板</a>
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
                    <a href="/send_user_collectinfo"><i class="fa fa-flash "></i>我关注的好友</a>

                </li>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-head-line">控制面板</h1>
                    <h1 class="page-subhead-line">
                        <label class="label label-primary">欢迎您！${user.userNickname}</label>
                    <#if user.securityControl==0>
                        <label class="label label-primary">您的权限为普通用户</label>
                    <#elseif user.securityControl==1>
                        <label class="label label-primary">您的权限为社团用户</label>
                    <#else >
                        <label class="label label-primary">您的权限为学校用户</label>
                    </#if>
                    </h1>

                </div>
            </div>
            <!-- /. ROW  -->
                <div id="container"
                     style="position: absolute;  width: 100%; height: 100%; overflow:hidden;">
                </div>
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

<script type="text/javascript">
    var map = new BMap.Map("container");
    addControlMap(map,"武汉",12);
    var markers=[];
    getAttentionsJbexinfList(${user.userId},map,markers);
</script>

</body>
</html>
