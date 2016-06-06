<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Tutoring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
<#--<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />-->
<#--<link href="css/style.css" rel='stylesheet' type='text/css' />-->
<#--<script src="js/jquery.min.js"></script>-->
<#--<script src="js/bootstrap.js"></script>-->
<#include "public/head.ftl">
    <!---- start-smoth-scrolling---->
<#--<script type="text/javascript" src="js/move-top.js"></script>-->
<#--<script type="text/javascript" src="js/easing.js"></script>-->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!--start-smoth-scrolling-->
</head>
<body>
<!--start-header-->
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
                <a class="navbar-brand" href="index.html"><img src="./images/temp/logo.png" alt=""/></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.html" class="hvr-bounce-to-top">Home <span class="sr-only">(current)</span></a>
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
<!--end-header-->
<!--start-banner-->
<div class="banner">
    <div class="container">
        <section class="slider">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <div class="banner-top">
                            <h1>Quisque ante ipsum</h1>
                            <h2>Phasellus quis nunc odio</h2>
                            <p>Sed mattis ipsum eget felis suscipit lacinia. Etiam semper semper nisi, nec tincidunt
                                diam aliquet vel. Aliquam sit amet tellus nec lectus faucibus pharetra. Mauris ultrices
                                sit amet mauris quis pulvinar. Fusce sit amet viverra mi, sit amet sollicitudin
                                erat.</p>
                            <div class="bnr-btn">
                                <a href="#" class="hvr-shutter-out-horizontal">Read More</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="banner-top">
                            <h1>Phasellus quis nunc</h1>
                            <h2>Phasellus quis nunc odio</h2>
                            <p>Maecenas molestie ultrices ante sit amet consectetur. Donec vel leo sit amet dolor
                                interdum ultrices a consequat dolor.Sed mattis ipsum eget felis suscipit lacinia. Etiam
                                semper semper nisi, nec tincidunt diam aliquet vel. Aliquam sit amet tellus nec
                                lectus.</p>
                            <div class="bnr-btn">
                                <a href="#" class="hvr-shutter-out-horizontal">Read More</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="banner-top">
                            <h1>Donec aliquet lacinia</h1>
                            <h2>Phasellus quis nunc odio</h2>
                            <p>Maecenas molestie ultrices ante sit amet consectetur. Donec vel leo sit amet dolor
                                interdum ultrices a consequat dolor. Etiam id ex tristique metus facilisis suscipit.
                                Praesent efficitur nibh eget sem sodales, sit amet elementum libero pellentesque.</p>
                            <div class="bnr-btn">
                                <a href="#" class="hvr-shutter-out-horizontal">Read More</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
    </div>
</div>
<!--end-banner-->
<!--FlexSlider-->
<#--<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />-->
<#--<script defer src="js/jquery.flexslider.js"></script>-->
<script type="text/javascript">
    $(function () {
        SyntaxHighlighter.all();
    });
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide",
            start: function (slider) {
                $('body').removeClass('loading');
            }
        });
    });
</script>
<!--End-slider-script-->
<!--start-provide-->
<div class="provide">
    <div class="col-md-3 provide-left provide-one">
        <h5>Vestibulum</h5>
        <h3>Ullamcorper </h3>
        <p>Praesent aliquam tortor non quam ornare volutpat. Integer at vehicula turpis.</p>
    </div>
    <div class="col-md-3 provide-left provide-two">
        <h5>faucibus</h5>
        <h3>Condimentum</h3>
        <p>Praesent aliquam tortor non quam ornare volutpat. Integer at vehicula turpis.</p>
    </div>
    <div class="col-md-3 provide-left provide-tre">
        <h5>pulvinar</h5>
        <h3>Fermentum</h3>
        <p>Praesent aliquam tortor non quam ornare volutpat. Integer at vehicula turpis.</p>
    </div>
    <div class="col-md-3 provide-left provide-four">
        <h5>sagittis</h5>
        <h3>Pellentesque</h3>
        <p> Praesent aliquam tortor non quam ornare volutpat. Integer at vehicula turpis.</p>
    </div>
    <div class="clearfix"></div>
</div>
<!--end-provide-->
<!--start-welcome-->
<div class="welcome">
    <div class="container">
        <div class="welcome-top">
            <div class="col-md-6 welcome-left">
                <h3>Our Mission</h3>
                <h4>Curabitur sed eros id dui gravida varius sit amet a purus Sed eu lacus.</h4>
                <p>Nulla dignissim elit et libero luctus convallis at in urna. Maecenas id efficitur eros. Morbi orci
                    libero, dapibus nec nibh nec, tristique pulvinar sem.</p>
                <div class="w-btn">
                    <a href="#" class="hvr-shutter-out-horizontal">Read More</a>
                </div>
            </div>
            <div class="col-md-6 welcome-left">
                <h3>How We Work?</h3>
                <h4>Donec gravida malesuada tellus. Nullam eleifend et lectus rhoncus.</h4>
                <p>Nulla dignissim elit et libero luctus convallis at in urna. Maecenas id efficitur eros. Morbi orci
                    libero, dapibus nec nibh nec, tristique pulvinar sem.</p>
                <div class="w-btn">
                    <a href="#" class="hvr-shutter-out-horizontal">Read More</a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--end-welcome-->
<!--start-join-->
<div class="join">
    <div class="container">
        <div class="join-main">
            <div class="col-md-3 join-left">
                <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                <h4>massa blandit</h4>
                <p>Proin fermentum diam eu massa blandit, congue finibus ante pulvinar. Aliquam lacinia odio eros.</p>
            </div>
            <div class="col-md-3 join-left">
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                <h4>congue finibus</h4>
                <p>Proin fermentum diam eu massa blandit, congue finibus ante pulvinar. Aliquam lacinia odio eros.</p>
            </div>
            <div class="col-md-3 join-left">
                <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                <h4>Aliquam lacinia</h4>
                <p>Proin fermentum diam eu massa blandit, congue finibus ante pulvinar. Aliquam lacinia odio eros.</p>
            </div>
            <div class="col-md-3 join-left">
                <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                <h4>placerat ipsum</h4>
                <p>Proin fermentum diam eu massa blandit, congue finibus ante pulvinar. Aliquam lacinia odio eros.</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--end-join-->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/">企业网站模板</a></div>
<!--start-news-->
<div class="news">
    <div class="container">
        <div class="news-top">
            <div class="col-md-8 news-left">
                <div class="news-heading">
                    <h3>News and Announcements</h3>
                </div>
                <div class="news-bottom">
                    <h4>Excepteur sint occaecat cupidatat non proident</h4>
                    <p>Quisque at tellus ullamcorper, pharetra arcu a, suscipit purus. Nullam feugiat in augue in
                        consequat. Sed ac dictum ligula, et pellentesque velit. In gravida eu felis sit amet molestie.
                        Morbi sed ex ac enim finibus vulputate. Cras arcu magna, auctor ornare neque in, finibus
                        tincidunt augue. </p>
                    <div class="news-one">
                        <div class="news-one-left">
                            <img src="images/n-1.jpg" alt=""/>
                        </div>
                        <div class="news-one-right">
                            <h4>Morbi sed ex ac enim finibus vulputate. Cras arcu magna, auctor ornare neque in.</h4>
                            <p>Nullam egestas diam eu felis dignissim, vitae posuere ex pretium. Morbi quam purus,
                                rhoncus eget enim sed, laoreet venenatis arcu. Curabitur vestibulum, orci pulvinar
                                pretium cursus, diam ante pretium elit, at finibus nisl ligula vitae enim. eu eleifend
                                enim condimentum ac.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="news-one">
                        <h4>Nunc molestie venenatis nisi nec pharetra. Morbi nulla odio, commodo a facilisis sed,
                            tristique eget ipsum.</h4>
                        <p>Cras gravida metus vel tortor porttitor pretium. Cras posuere sem ut neque commodo aliquet.
                            Proin in dui tempor, volutpat velit congue, mollis felis. Proin quis ante vitae nunc cursus
                            interdum. Sed nec placerat risus. Sed rhoncus nibh et accumsan placerat. Nunc nec libero a
                            dui cursus mattis placerat a urna.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 news-right">
                <div class="news-heading">
                    <h3>Upcoming Events</h3>
                </div>
                <div class="news-btm">
                    <div class="news-1">
                        <img src="images/n-2.jpg" alt=""/>
                        <div class="n-1">
                            <h5>Mauris eros felis</h5>
                            <p>Mauris varius consequat tortor vitae</p>
                        </div>
                    </div>
                    <div class="news-1">
                        <img src="images/n-3.jpg" alt=""/>
                        <div class="n-1">
                            <h5>Mauris eros felis</h5>
                            <p>Mauris varius consequat tortor vitae</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--end-news-->
<!--start-teacher-->
<div class="teacher">
    <div class="container">
        <div class="teacher-top">
            <h3>our staff</h3>
        </div>
        <div class="teacher-main">
            <div class="teacher-left">
                <img src="images/t-1.jpg" alt=""/>
                <h4>Sarah Smith</h4>
                <p>Nunc nec libero a dui cursus mattis placerat a urna.</p>
            </div>
            <div class="teacher-left">
                <img src="images/t-2.jpg" alt=""/>
                <h4>Milla Row</h4>
                <p>Nunc nec libero a dui cursus mattis placerat a urna.</p>
            </div>
            <div class="teacher-left">
                <img src="images/t-3.jpg" alt=""/>
                <h4>John Franklin</h4>
                <p>Nunc nec libero a dui cursus mattis placerat a urna.</p>
            </div>
            <div class="teacher-left">
                <img src="images/t-4.jpg" alt=""/>
                <h4>Amina Wilson</h4>
                <p>Nunc nec libero a dui cursus mattis placerat a urna.</p>
            </div>
            <div class="teacher-left">
                <img src="images/t-5.jpg" alt=""/>
                <h4>Jack Jones</h4>
                <p>Nunc nec libero a dui cursus mattis placerat a urna.</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--end-teacher-->
<!--start-footer-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-4 footer-left">
                <span class="glyphicon glyphicon-map-marker map-marker" aria-hidden="true"></span>
                <p>The company name, <span>Lorem ipsum dolor,</span> Glasglow Dr 40 Fe 72.</p>
            </div>
            <div class="col-md-4 footer-left">
                <span class="glyphicon glyphicon-phone map-marker" aria-hidden="true"></span>
                <p>+1 800 603 6035 <span>+1 900 300 1320</span></p>
            </div>
            <div class="col-md-4 footer-left">
                <p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.More Templates <a
                        href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a
                        href="http://www.cssmoban.com/" title="网站模板" target="_blank">网站模板</a></p>
                <ul>
                    <li><a href="#"><span class="fb"></span></a></li>
                    <li><a href="#"><span class="twit"></span></a></li>
                    <li><a href="#"><span class="rss"></span></a></li>
                    <li><a href="#"><span class="ggl"></span></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            /*
            var defaults = {
                  containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear'
             };
            */

            $().UItoTop({easingType: 'easeOutQuart'});

        });
    </script>
    <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover"
                                                                             style="opacity: 1;"> </span></a>
</div>
<!--end-footer-->
</body>
</html>
