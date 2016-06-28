<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon.ico">

    <link href="libs/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animations.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    <script>$(document).ready(function(c) {
        $('.close').on('click', function(c){
            $('.login-form').fadeOut('slow', function(c){
                $('.login-form').remove();
            });
        });
    });
    </script>
</head>

<body class="no-trans">
<!-- scrollToTop -->
<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

<!-- header start -->
<header class="header fixed clearfix navbar navbar-fixed-top">
    <div class="container">
        <div class="row">
            <div class="col-md-4">

                <!-- header-left start -->
                <div class="header-left">

                    <!-- logo -->
                    <div class="logo smooth-scroll">
                        <a href="#banner"><img id="logo" src="images/logo.png" alt="Worthy"></a>
                    </div>

                    <!-- name-and-slogan -->
                    <div class="logo-section smooth-scroll">
                        <div class="brand"><a href="/send_manage_aindex">智慧校园</a></div>
                    </div>

                </div>
                <!-- header-left end -->

            </div>
            <div class="col-md-8">

                <!-- header-right start -->
                <div class="header-right">

                    <!-- main-navigation start -->
                    <div class="main-navigation animated">

                        <!-- navbar start -->
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="container-fluid">

                                <!-- Toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                                        <span class="sr-only">结伴而行</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse scrollspy smooth-scroll" id="navbar-collapse-1">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active"><a href="#banner">主页</a></li>
                                        <li><a href="#services">服务</a></li>
                                        <li><a href="#about">关于</a></li>

                                        <li><a href="#portfolio">分类步骤</a></li>
                                        <!--    <li><a href="#price">内容2</a></li>   -->
                                        <li><a href="send_user_login">登录</a></li>
                                    </ul>
                                </div>

                            </div>
                        </nav>
                        <!-- navbar end -->

                    </div>
                    <!-- main-navigation end -->

                </div>
                <!-- header-right end -->

            </div>
        </div>
    </div>
</header>
<!-- header end -->

<!-- banner start -->
<div id="banner" class="banner">
    <div class="banner-image"></div>
    <div class="banner-caption">
        <div class="container">
            <div class="row">
                <div class="caption-data" style="margin-top: 0px; opacity: 1;" data-animation-effect="fadeIn">
                    <h1>结伴而行！</h1>
                    <h3 class="padding-top30">智慧校园的应用<br/>结识更多志同道合的小伙伴！</h3>
                    <div class="padding-top60 contact-form">
                        <a href="/send_schoolmap_index" id="initbtn" class="btn cta-button">Click Here</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- banner end -->
<section class="hero-caption secPadding">

    <div class="container">

        <div class="row " style="margin-top: 0px;">
            <div class="col-sm-12">
                <h2>欢迎来到<strong>智慧校园</strong> - <span>与更多志同道合的小伙伴</span> 结伴而行！</h2>
                <p>结伴而行让大家的信息及动向数据化，提供平台让大家拓展交际圈，掌握校园的实时动态</p>
            </div>

        </div>

    </div>

</section>
<!-- section start -->
<section class="section transprant-bg pclear secPadding">
    <div class="container no-view" data-animation-effect="fadeIn">
        <h1 id="services" class="title text-center">服务</h1>
        <div class="space"></div>
        <div class="row">
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-trophy"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">用户发布的动向</h3>
                        <blockquote>
                            <p>附近有没有同样爱好的小伙伴能够一起愉快地玩耍呢？</p>

                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-gear"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">校园实时动态</h3>
                        <blockquote>
                            <p>校园又发生了啥！第一时间你就知道！</p>

                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-laptop"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">社团发展动态</h3>
                        <blockquote>
                            <p>喜欢的社团最近在干啥呀？不怕！你也能知道！</p>

                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-clock-o"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">三种权限注册</h3>
                        <blockquote>
                            <p>普通、社团、校园。总有一种权限是你喜欢的。</p>

                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-heart"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">街景图</h3>
                        <blockquote>
                            <p>告别找不着路的日子</p>

                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-magic"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">全景图</h3>
                        <blockquote>
                            <p>“你那儿室内长啥样呀？”“点点全景环视图就知道了呗！”</p>

                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- section end -->

<!-- section start -->
<section class="section clearfix no-view secPadding" data-animation-effect="fadeIn">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 id="about" class="title text-center">关于 <span>结伴而行</span></h1>
                <p class="lead text-center">啥？跨校也能结伴而行？</p>
                <div class="space"></div>
                <div class="row">
                    <div class="col-md-6">
                        <img src="images/section-image-1.png" alt="">
                        <div class="space"></div>
                    </div>
                    <div class="col-md-6">
                        <p>结伴而行采用了街景图，可以看到目的地的路径环境，就算跨校每棵树每个道路牌每个路口你都一清二楚！</p>
                        <p>结伴而行还采用了全景环视图，通过pano2VR技术实现，可以提前知道室内地图决定要不要作为一个约玩的地点也可以作为辨识室内的依据</p>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-arrow-circle-right pr-10 colored"></i>发布动向以及自身位置</li>
                            <li><i class="fa fa-arrow-circle-right pr-10 colored"></i>等待志同道合的小伙伴们响应你的动向</li>
                            <li><i class="fa fa-arrow-circle-right pr-10 colored"></i>街景图全景图助你不在找路上花时间！</li>
                            <li><i class="fa fa-arrow-circle-right pr-10 colored"></i>跨不跨校都可以！</li>
                            <li><i class="fa fa-arrow-circle-right pr-10 colored"></i>约个自习也可以哦！</li>
                        </ul>
                    </div>
                </div>
                <!--  <div class="space"></div>
                  <h2>Amazing free bootstrap template</h2>
                  <div class="row">
                      <div class="col-md-6">
                          <p>Lorem ipsum dolor sit amet, adipisicing  sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde error commodi architecto, laudantium culpa optio corporis quod earumdignissimos eius mollitia et quas officia doloremque.</p>
                          <ul class="list-unstyled">
                              <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Lorem ipsum enimdolor sit amet</li>
                              <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Explicabo deleniti neque aliquid</li>
                              <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Consectetur adipisicing elit</li>
                              <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Lorem ipsum dolor sit amet</li>
                              <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Quo issimos molest quibusdam temporibus</li>
                          </ul>
                          <p>Dolores quam magnam aadipisicing  sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde molestias velit eveniet, facere autem saepe autrunt.</p>
                      </div>
                      <div class="col-md-6">
                          <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                              <div class="panel panel-default">
                                  <div class="panel-heading" role="tab" id="headingOne">
                                      <h4 class="panel-title">
                                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                              Collapsible Group Item #1
                                          </a>
                                      </h4>
                                  </div>
                                  <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                      <div class="panel-body">
                                          Consectetur adipisicing  sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat ntium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earumdignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.
                                      </div>
                                  </div>
                              </div>
                              <div class="panel panel-default">
                                  <div class="panel-heading" role="tab" id="headingTwo">
                                      <h4 class="panel-title">
                                          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                              Collapsible Group Item #2
                                          </a>
                                      </h4>
                                  </div>
                                  <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                      <div class="panel-body">
                                          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat ntium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earumdignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.
                                      </div>
                                  </div>
                              </div>
                              <div class="panel panel-default">
                                  <div class="panel-heading" role="tab" id="headingThree">
                                      <h4 class="panel-title">
                                          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                              Collapsible Group Item #3
                                          </a>
                                      </h4>
                                  </div>
                                  <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                      <div class="panel-body">
                                          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi adipisci illo, voluptatum ipsam fuga error commodi architecto, laudantium culpa tenetur at id, beatae placeat deserunt iure quas voluptas fugit eveniet.
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>   -->
            </div>
        </div>
    </div>
</section>
<!-- section end -->

<!-- section start -->
<div class="default-bg colord secPadding">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <h1 class="text-center">智慧校园   结伴而行</h1>
            </div>
        </div>
    </div>
</div>
<!-- section end -->

<!-- section start -->
<section class="section secPadding">
    <div class="container">
        <h1 class="text-center title" id="portfolio">结伴而行</h1>
        <div class="separator"></div>
        <!-- <p class="lead text-center">智慧校园<br>结伴而行</p> -->
        <br>
        <div class="row no-view" data-animation-effect="fadeIn">
            <div class="col-md-12">

                <!-- isotope filters start -->
                <div class="filters text-center">
                    <ul class="nav nav-pills">
                        <li class="active"><a href="#" data-filter="*">所有</a></li>
                        <li><a href="#" data-filter=".web-design">约玩的步骤</a></li>
                        <li><a href="#" data-filter=".app-development">不同权限</a></li>
                        <li><a href="#" data-filter=".mobile-apps">校园街景全景</a></li>
                    </ul>
                </div>
                <!-- isotope filters end -->

                <!-- portfolio items start -->
                <div class="isotope-container row grid-space-20">
                    <div class="col-sm-6 col-md-3 isotope-item web-design">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-1.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-1">
                                    <i class="fa fa-search-plus"></i>

                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-1">发布图片</a>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="project-1" tabindex="-1" role="dialog" aria-labelledby="project-1-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-1-label">发布图片</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-1.jpg" alt="">
                                                <br/>
                                                <h3>发布自己喜欢的图片</h3>
                                                <!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                                  -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item app-development">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-2.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-2">
                                    <i class="fa fa-search-plus"></i>

                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-2">普通用户</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-2" tabindex="-1" role="dialog" aria-labelledby="project-2-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-2-label">普通用户</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-2.jpg" alt="">
                                                <br/>
                                                <h3>普通用户即学生用户</h3>
                                                <!--   <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                                 -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item web-design">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-3.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-3">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-3">发布心情</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-3" tabindex="-1" role="dialog" aria-labelledby="project-3-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-3-label">发布心情</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-3.jpg" alt="">
                                                <br/>
                                                <h3>发布你此时此刻的心情</h3>
                                                <!--  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                                -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item mobile-apps">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-4.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-4">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-4">七大校园定位</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-4" tabindex="-1" role="dialog" aria-labelledby="project-4-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-4-label">七大校园定位</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-4.jpg" alt="">
                                                <br/>
                                                <h3>快速定位七大校园</h3>
                                                <!--  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                              -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item app-development">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-5.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-5">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-5">社团用户</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-5" tabindex="-1" role="dialog" aria-labelledby="project-5-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-5-label">社团用户</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-5.jpg" alt="">
                                                <br/>
                                                <h3>发布自己社团的活动信息</h3>
                                                <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                            -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item web-design">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-6.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-6">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-6">发布动向位置</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-6" tabindex="-1" role="dialog" aria-labelledby="project-6-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-6-label">发布动向位置</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-6.jpg" alt="">
                                                <br/>
                                                <h3>发布自己当前的动向及地点位置</h3>
                                                <!--  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                              -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item mobile-apps">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-7.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-7">
                                    <i class="fa fa-search-plus"></i>
                                    <span>Site Building</span>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-7">街景图</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-7" tabindex="-1" role="dialog" aria-labelledby="project-7-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-7-label">街景图</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-7.jpg" alt="">
                                                <br/>
                                                <h3>查看室外街景图</h3>
                                                <!--  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                             -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item web-design">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-8.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-8">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-8">等待加入</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-8" tabindex="-1" role="dialog" aria-labelledby="project-8-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-8-label">等待加入</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-8.jpg" alt="">
                                                <br/>
                                                <h3>等待志同道合的小伙伴们的响应</h3>
                                                <!--  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                              -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item web-design">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-9.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-9">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-9">用户沟通</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-9" tabindex="-1" role="dialog" aria-labelledby="project-9-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-9-label">用户沟通</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-9.jpg" alt="">
                                                <br/>
                                                <h3>用户之间进行关于位置的沟通</h3>
                                                <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                          -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item mobile-apps">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-10.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-10">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-10">全景图</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-10" tabindex="-1" role="dialog" aria-labelledby="project-10-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-10-label">全景图</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-10.jpg" alt="">
                                                <br/>
                                                <h3>可以观察室内环境情况</h3>
                                                <!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                          -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item web-design">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-11.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-11">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-11">约玩越自习</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-11" tabindex="-1" role="dialog" aria-labelledby="project-11-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-11-label">约玩越自习</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-11.jpg" alt="">
                                                <br/>
                                                <h3>不仅仅可以约玩，有空可以越自习多多学习哦</h3>
                                                <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                             -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                    <div class="col-sm-6 col-md-3 isotope-item app-development">
                        <div class="image-box">
                            <div class="overlay-container">
                                <img src="images/portfolio-12.jpg" alt="">
                                <a class="overlay" data-toggle="modal" data-target="#project-12">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-12">学校用户</a>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="project-12" tabindex="-1" role="dialog" aria-labelledby="project-12-label" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="project-12-label">学校用户</h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="images/portfolio-12.jpg" alt="">
                                                <br/>
                                                <h3>作为最大的用户可以发布学校的重大信息</h3>
                                                <!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
                                            -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal end -->
                    </div>

                </div>
                <!-- portfolio items end -->

            </div>
        </div>
    </div>
</section>
<!-- section end -->
<!-- section start -->
<section class="default-bg secPadding">

    <div class="container">
        <div class="row">
            <div class='col-md-offset-2 col-md-8 text-center'>
                <h2>用户动态</h2>
            </div>
        </div>
        <div class='row'>
            <div class='col-md-offset-2 col-md-8'>
                <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                    <!-- Bottom Carousel Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#quote-carousel" data-slide-to="1"></li>
                        <li data-target="#quote-carousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Carousel Slides / Quotes -->
                    <div class="carousel-inner">

                        <!-- Quote 1 -->
                        <div class="item active">
                            <blockquote>
                                <div class="row">
                                    <div class="col-sm-3 text-center">
                                        <img class="img-circle" src="images/128.jpg" style="width: 100px;height:100px;">
                                    </div>
                                    <div class="col-sm-9">
                                        <p>结伴而行太酷了！打乒乓球约一下很快就能找着伴儿了！</p>
                                        <small>高冷的夏浩</small>
                                    </div>
                                </div>
                            </blockquote>
                        </div>
                        <!-- Quote 2 -->
                        <div class="item">
                            <blockquote>
                                <div class="row">
                                    <div class="col-sm-3 text-center">
                                        <img class="img-circle" src="images/129.jpg" style="width: 100px;height:100px;">
                                    </div>
                                    <div class="col-sm-9">
                                        <p>以前看电影总缺人，现在上结伴而行约一下就有好多喜欢看同样类型电影的小伙伴呢！</p>
                                        <small>老是中电影票的嘉浩哥</small>
                                    </div>
                                </div>
                            </blockquote>
                        </div>
                        <!-- Quote 3 -->
                        <div class="item">
                            <blockquote>
                                <div class="row">
                                    <div class="col-sm-3 text-center">
                                        <img class="img-circle" src="images/130.jpg" style="width: 100px;height:100px;">
                                    </div>
                                    <div class="col-sm-9">
                                        <p>感觉现在有个大神一起自习特别棒！！谢谢结伴而行</p>
                                        <small>爱自习的颜明苏</small>
                                    </div>
                                </div>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- section end -->
<!--
<section id="price" class="price-table secPadding">
    <div class="container text-center">
        <div class="heading">
            <h1 class="text-center title" id="">Our Price</h1>
            <div class="separator"></div>
            <p class="lead text-center">Lorem ipsum dolor sit amet laudantium molestias similique.<br> Quisquam incidunt ut laboriosam.</p>
            <br>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Basic</h3>
                    </div>
                    <div class="panel-body">
                        <h3 class="panel-title price">$9<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">5 Projects</li>
                        <li class="list-group-item">5 GB of Storage</li>
                        <li class="list-group-item">Up to 100 Users</li>
                        <li class="list-group-item">10 GB Bandwidth</li>
                        <li class="list-group-item">Security Suite</li>
                        <li class="list-group-item"><a class="btn btn-default">Sign Up Now!</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Plus</h3>
                    </div>
                    <div class="panel-body">
                        <h3 class="panel-title price">$19<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">10 Projects</li>
                        <li class="list-group-item">10 GB of Storage</li>
                        <li class="list-group-item">Up to 250 Users</li>
                        <li class="list-group-item">25 GB Bandwidth</li>
                        <li class="list-group-item">Security Suite</li>
                        <li class="list-group-item"><a class="btn btn-default">Sign Up Now!</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="panel panel-danger text-center">
                    <div class="panel-heading">
                        <h3>Premium</h3>
                    </div>
                    <div class="panel-body">
                        <h3 class="panel-title price">$29<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">Unlimited</li>
                        <li class="list-group-item">50 GB of Storage</li>
                        <li class="list-group-item">Up to 1000 Users</li>
                        <li class="list-group-item">100 GB Bandwidth</li>
                        <li class="list-group-item">Security Suite</li>
                        <li class="list-group-item"><a class="btn btn-primary">Sign Up Now!</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Ultimate</h3>
                    </div>
                    <div class="panel-body">
                        <h3 class="panel-title price">$49<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">Unlimited</li>
                        <li class="list-group-item">150 GB of Storage</li>
                        <li class="list-group-item">Unlimited</li>
                        <li class="list-group-item">500 GB Bandwidth</li>
                        <li class="list-group-item">Security Suite</li>
                        <li class="list-group-item"><a class="btn btn-default">Sign Up Now!</a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</section>
-->


<!-- footer start -->

<footer id="footer">

    <!-- .footer start -->
    <!--
        <div class="footer section">
            <div class="container">
                <h1 class="title text-center" id="contact">Contact Us</h1>
                <div class="space"></div>
                <div class="row">

                    <div class="col-sm-6">
                        <div class="footer-content">
                            <form role="form" id="footer-form">
                                <div class="form-group has-feedback">
                                    <label class="sr-only" for="name2">Name</label>
                                    <input type="text" class="form-control" id="name2" placeholder="Name" name="name2" required>
                                    <i class="fa fa-user form-control-feedback"></i>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="sr-only" for="email2">Email address</label>
                                    <input type="email" class="form-control" id="email2" placeholder="Enter email" name="email2" required>
                                    <i class="fa fa-envelope form-control-feedback"></i>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="sr-only" for="message2">Message</label>
                                    <textarea class="form-control" rows="8" id="message2" placeholder="Message" name="message2" required></textarea>
                                    <i class="fa fa-pencil form-control-feedback"></i>
                                </div>
                                <input type="submit" value="Send" class="btn btn-default">
                            </form>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="footer-content">


                            <div class="widget-content">

                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel nam magnam natus tempora cumque, aliquam deleniti voluptatibus voluptas. Maecenas ultrices finibus erat sit amet auctor. Curabitur et metus laoreet, fermentum quam sagittis, cursus augue. </p><br/>

                                <p class="contacts"><i class="fa fa-map-marker"></i> 1508 Kembery Drive, Chicago, IL 60605 </p>

                                <p class="contacts"><i class="fa fa-phone"></i> 202-314-1583</p>

                                <p class="contacts"><i class="fa fa-envelope"></i> support@biss.com</p>



                            </div>

                            </aside>
                            <ul class="social-links">
                                <li class="facebook"><a target="_blank" href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="twitter"><a target="_blank" href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="googleplus"><a target="_blank" href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="skype"><a target="_blank" href="#"><i class="fa fa-skype"></i></a></li>
                                <li class="linkedin"><a target="_blank" href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li class="youtube"><a target="_blank" href="#"><i class="fa fa-youtube"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        -->
    <!-- .footer end -->

    <!-- .subfooter start -->
    <div class="subfooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p class="text-center">结伴而行团队<br>合作邮箱395787023@qq.com<!--<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;--></a></p>
                </div>
            </div>
        </div>
    </div>
    <!-- .subfooter end -->

</footer>
<!-- footer end -->

<!-- JavaScript -->
<script type="text/javascript" src="plugins/jquery.min.js"></script>
<script type="text/javascript" src="libs/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="plugins/modernizr.js"></script>
<script type="text/javascript" src="plugins/isotope/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="plugins/jquery.backstretch.min.js"></script>
<script type="text/javascript" src="plugins/jquery.appear.js"></script>

<!-- Custom Scripts -->
<script type="text/javascript" src="js/custom.js"></script>

</body>
</html>
