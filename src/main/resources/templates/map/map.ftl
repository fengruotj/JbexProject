<!DOCTYPE html>
<html>
<#include "/public/head.ftl">
<script type="text/javascript">
    $(function(){
      var map= new BMap.Map('allmap');
        addControlMap(map,"武汉",19);

        $("#huake").click(function(){
            map.centerAndZoom(new BMap.Point(114.420207,30.515336), 19);
        });

        $("#dida").click(function(){
            map.centerAndZoom(new BMap.Point(114.407704, 30.52595), 19);
        });

        $("#wuda").click(function(){
            map.centerAndZoom(new BMap.Point(114.369638,30.54187), 19);
        });

        $("#wuli").click(function(){
            map.centerAndZoom(new BMap.Point(114.339654,30.514297), 19);
        });

        $("#huanong").click(function(){
            map.centerAndZoom(new BMap.Point(114.364494,30.480121), 19);
        });

        $("#huashi").click(function(){
            map.centerAndZoom(new BMap.Point(100.305456, 35.570037), 19);
        });

        $("#zhongnan").click(function(){
            map.centerAndZoom(new BMap.Point(114.391434,30.479777), 19);
        });
    });

</script>
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
                    <li class="active"><a href="/send_map_map" class="hvr-bounce-to-top">Home <span class="sr-only">(current)</span></a>
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
<div class="dropdown">
    <button type="button" class="btn dropdown-toggle" id="dropdownMenu1"
            data-toggle="dropdown">
        学校
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
        <li role="presentation" >
            <a id="dida" role="menuitem" tabindex="-1" href="#">中国地质大学</a>
        </li>
        <li role="presentation" >
            <a id="huake" role="menuitem" tabindex="-1" href="#">华中科技大学</a>
        </li>
        <li role="presentation" >
            <a id="wuli" role="menuitem" tabindex="-1" href="#">武汉理工大学</a>
        </li>
        <li role="presentation" >
            <a id="huashi"  role="menuitem" tabindex="-1" href="#">华中师范大学</a>
        </li>
        <li role="presentation" onclick="wuda()">
            <a id="wuda" role="menuitem" tabindex="-1" href="#">武汉大学</a>
        </li>
        <li role="presentation" onclick="zhongnan()">
            <a id="zhongnan" role="menuitem" tabindex="-1" href="#">中南财经政法大学</a>
        </li>
        <li role="presentation" onclick="huanong()">
            <a id="huanong" role="menuitem" tabindex="-1" href="#">华中农业大学</a>
        </li>
        <li role="presentation" class="divider"></li>
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="#">分离的链接</a>
        </li>
    </ul>
</div>
<div id="allmap"></div>
<p>在地图上添加全景控件，点击全景控件进入全景图</p>
</body>
</html>
<script type="text/javascript">
//    var map = new BMap.Map('allmap');
//    map.centerAndZoom(new BMap.Point(120.305456, 32.570037), 12);
//    map.enableScrollWheelZoom(true);
//    // 覆盖区域图层测试
//    map.addTileLayer(new BMap.PanoramaCoverageLayer());
//
//    var stCtrl = new BMap.PanoramaControl(); //构造全景控件
//    stCtrl.setOffset(new BMap.Size(20, 20));
//    map.addControl(stCtrl);//添加全景控件


</script>
