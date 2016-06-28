<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
        #allmap{width:100%;height:500px;}
        p{margin-left:5px; font-size:14px;}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=fQaZ0KHrLQq5GZtdxoRtCRYl"></script>

    <script type="text/javascript" src=/js/map.js></script>

    <script type="text/javascript" src=/js/jbexmap.js></script>
    <script src="libs/jquery/jquery-2.0.0.min.js"></script>
    <title>显示全景控件</title>
</head>
<body>
<div id="allmap"></div>
<div>
    <button id="huake">华中科技大学</button>
    <button id="dida">中国地质大学</button>
    <button id="wuda">武汉大学</button>
    <button id="wuli">武汉理工大学</button>
    <button id="huanong">华中农业大学</button>
    <button id="huashi">华中师范大学</button>
    <button id="zhongnan">中南财经大学</button>
</div>
</body>
</html>
<script type="text/javascript">
    var map = new BMap.Map('allmap');
    map.centerAndZoom(new BMap.Point(114.407704, 30.52595), 19);
    map.enableScrollWheelZoom(true);
    // 覆盖区域图层测试
    map.addTileLayer(new BMap.PanoramaCoverageLayer());

    var stCtrl = new BMap.PanoramaControl(); //构造全景控件
    stCtrl.setOffset(new BMap.Size(20, 20));
    map.addControl(stCtrl);//添加全景控件

    var publicinfoComunityMarkers=[];
    ajax("/getPublicinfoByCommunity",{},"get",function(data){
        getinfoListByPict(data,map,publicinfoComunityMarkers,"/images/marker-blue.png")
    });
    var publicinfoSchoolMarkers=[];
    ajax("/getPublicinfoBySchool",{},"get",function(data){
        getinfoListByPict(data,map,publicinfoSchoolMarkers,"/images/marker-gold.png")
    });

    var jbexinfoMarkers=[];
    ajax("/getAllJbexinfoList",{},"get",function(data){
        getinfoListByPict(data,map,jbexinfoMarkers,"/images/marker-green.png")
    });

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
</script>
