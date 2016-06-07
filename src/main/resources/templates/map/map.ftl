<!DOCTYPE html>
<html>
<#include "public/head.ftl">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
        #allmap{width:100%;height:500px;}
        p{margin-left:5px; font-size:14px;}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=fQaZ0KHrLQq5GZtdxoRtCRYl"></script>
    <title>显示全景控件</title>
</head>
<body>
<div class="header" id="home">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/test"><img src="./images/temp/logo.png" alt=""/></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/map" class="hvr-bounce-to-top">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li><a href="about.html" class="hvr-bounce-to-top">About</a></li>
                    <li><a href="services.html" class="hvr-bounce-to-top">Services</a></li>
                    <li><a href="typo.html" class="hvr-bounce-to-top">Typo</a></li>
                    <li><a href="contact.html" class="hvr-bounce-to-top">Contact</a></li>
                </ul>
                <div class="clearfix"></div>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>
<div id="allmap"></div>
<p>在地图上添加全景控件，点击全景控件进入全景图</p>
</body>
</html>
<script type="text/javascript">
    var map = new BMap.Map('allmap');
    map.centerAndZoom(new BMap.Point(120.305456, 32.570037), 12);
    map.enableScrollWheelZoom(true);
    // 覆盖区域图层测试
    map.addTileLayer(new BMap.PanoramaCoverageLayer());

    var stCtrl = new BMap.PanoramaControl(); //构造全景控件
    stCtrl.setOffset(new BMap.Size(20, 20));
    map.addControl(stCtrl);//添加全景控件
</script>
