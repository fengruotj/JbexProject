//声明_czc对象:
var _czc = _czc || [];
var bIe = "ActiveXObject" in window

var isMobile = {
    Android: function() {
        return navigator.userAgent.match(/Android/i) ? true : false;
    },
    BlackBerry: function() {
        return navigator.userAgent.match(/BlackBerry/i) ? true : false;
    },
    iOS: function() {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i) ? true : false;
    },
    Windows: function() {
        return navigator.userAgent.match(/IEMobile/i) ? true : false;
    },
    any: function() {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Windows());
    }
};

$(document).ready(function() {
	if(!bIe){
		window.addEventListener('message',function(e){
			// console.log(e.origin,e.data)
			oLoginMod.login()
		}, false)
	}

	if(bIe && !$.cookie('browser_info')){
		var cookietime = new Date();
		cookietime.setTime(new Date().getTime() + (12 * 60 * 60 * 1000));//coockie保存12小时
		$.cookie('browser_info', 1, { path: '/', expires: cookietime });
		$.fancybox({
			maxWidth: 800,
			title: '',
			content: '<div class="browser_info">为了获得更好的官网体验，请升级您的浏览器<br /><a href="http://www.uc.cn/" target="_blank">UC浏览器下载>></a></div>'
		});
	}

    if ($('.sidebar').length > 0) {
        var minHeight = $('.sidebar > ul').height() + 80;
        $('.content-sidebar').css('min-height', minHeight);
        $('.page_item_has_children > a').on('click', function(e) {
            var parent = $(this).parent();
            if (parent.hasClass('link_close')) {
                return true;
            }
            e.preventDefault();
            parent.siblings().removeClass('current_page_ancestor');
            parent.toggleClass('current_page_ancestor');
            window.scrollTo(0, 0);
            var minHeight = $('.sidebar > ul').height() + 80;
            $('.content-sidebar').css('min-height', minHeight);
        });

        var iframes = $('.content > iframe');
        iframes.wrap('<div></div>');
    }

    var tables = $('.content > table');
    tables.wrap('<div></div>');

	var oNavA = $('ul.nav > li > a')
	// oNavA
	// 	.bind('click', function(){
	// 		// debugger
	// 		var oThis = $(this),
	// 			oUl = oThis.next('ul')

	// 		if(oUl.is(':visible')){
	// 			oUl.hide()
	// 		}else{
	// 			oUl.show()
	// 		}
	// 	})

	var bTimeout = false,
		iTimeout = 100,
		oTimeout = {},
		iWinWidth = $(window).width()
	oNavA.parent()
		.each(function(i){
			var oThis = $(this),
				oUl = oThis.find('ul'),
				oSearch = oThis.find('.searh_wrapper'),
				iWidth = oThis.width()

			//搜索宽度
			if(oSearch.length > 0){
				var iNavWidth = oThis.parent().width()
				oSearch
					.width(iNavWidth)
					.css('marginLeft', -iNavWidth+iWidth)
					.find('input[type="text"]').width(iNavWidth-121)
				return true
			}

			if(oUl.length <= 0){
				return true
			}

			var iLeft = oThis.offset().left,
				iUlLeft = oUl.offset().left

			//调整下拉菜单位置
			iTemp = iUlLeft + oUl.width()/2
			if(iTemp < iLeft){
				oUl.css('marginLeft', iTemp - iWidth/2)
			}

			//计算列高度
			var sHeight = 0

			oUl.find('li')
				//计算最高li高度
				.each(function(i){
					var oLi = $(this),
						sLiH = oLi.height()

					if(sLiH > sHeight){
						sHeight = sLiH
					}
				})
				//给每个li设置高度
				.height(sHeight)

			//设置折行ul的宽度
			if(oUl.height() > oUl.find('li').height()+1){
				for(var i = oUl.find('li').length+oUl.find('li.columns_2').length; i > 0; i --){
					if(iUlLeft+(170*i) < iWinWidth){
						oUl.width(iUlLeft+170*(i-1)-139)
						break
					}
				}
			}
		})

	//如果是PC端
	if( !isMobile.any() ){
		oNavA.parent()
			.hover(function(){
				var oThis = $(this),
					iThis = oThis.index(),
					oUl = oThis.find('ul'),
					iWidth = oThis.width(),
					iLeft = oThis.offset().left

				if(oUl.length > 0 && !oUl.hasClass('show')){
					wUlShow = oUl
					clearTimeout(oTimeout)
					oTimeout = setTimeout('dropdown(1)', iTimeout)
				}
			}, function(){
				var oThis = $(this),
					oUl = oThis.find('ul')

				//如果是搜索则忽略
				if(oThis.hasClass('search_nav')){
					return true
				}

				wUlHide = oUl
				clearTimeout(oTimeout)
				oTimeout = setTimeout('dropdown(0)', iTimeout)
			})
			.find('ul, .searh_wrapper').hover(function(){
				clearTimeout(oTimeout)
			})

	//如果是手机端
    }else{
		oNavA.parent()
			.on('touchstart', function(){
				var oThis = $(this),
					iThis = oThis.index(),
					oUl = oThis.find('ul')

				if(oUl.length > 0 && !oUl.hasClass('show')){
					wUlShow = oUl
					dropdown(1)
				}else{
					// wUlShow = oUl
					// dropdown(0)
				}
			})
		$('header ~ *').on('touchstart', function(){
			var oThis = $(this)
			var oUl = oNavA.parent().find('ul.show')
			if(oUl.length > 0){
				wUlShow = oUl
				dropdown(0)
			}
		})
    }

	$("#search_a").click(function(){
		var oThis = $(this);
		oThis
			.parent().addClass('current').end()
			.next()
				.show()
				.find('input[type="text"]')
					.focus();
	});
	$('*').click(function(){
		if(!$('#s').is(':focus') && !$('#searchsubmit').is(':focus')){
			$(".searh_wrapper").hide();
			$("#search_a, .search_nav").removeClass('current');
		}
	});

	var sLoginUrl = $('#login_a').attr('data-site') || 'http://id.amap.com/',
		sUrl = window.location.href;
	$('#member_a').attr({
		href: sLoginUrl+'member?ref='+sUrl
	});

	if(bIe){
		$('#login_a').attr({
			target: '_self',
			href: sLoginUrl+'?ref='+sUrl
		});
	}

	$("div.menu a").each(function (i){
		$(this).attr("target", "_blank");
	});

    var links = $('.sidebar').find('a');
    links.each(function(index, ele) {
        if ($(this).text() === '示例中心') {
            $(this).attr('target', '_blank').parent().addClass('link_close');
            return false;
        }
    });

	/*for left list function*/
	var oLeftList = $("#sub_page_nav");
	var oLeftListA = oLeftList.find('a');
	if(!oLeftList.hasClass('js_nav')){
		oLeftList.find(".current_page_item").parents("ul.children").addClass("current");

		oLeftListA.each(function (i){
			var oThis = $(this);
			var oLi = oThis.parent();
			var iAfterUl = oThis.next("ul.children");
			var i2Children = iAfterUl.find("ul.children").length;
			if(iAfterUl.length > 0 && i2Children < 1){
				var sHref = oThis.attr('href')
				if(sHref.indexOf("javascript-api") >= 0 && oThis.text() == '开发指南'){
					oThis
						.attr("target", "_blank")
						.parent().addClass('no_arrow')
				}else{
					oThis.attr("href", "javascript:;")
				}
				oThis
					.click(function (){
						if(oThis.parent().hasClass('no_arrow')){
							return true
						}
						oLeftList.find("ul.children.current").removeClass("current");

						if(oLi.hasClass('current_page_ancestor')){
							oLi.removeClass('current_page_ancestor');
							iAfterUl.removeClass("current");
							oThis.parents("ul.children").removeClass("current");
						}else{
							oLi.addClass('current_page_ancestor');
							iAfterUl.addClass("current");
							oThis.parents("ul.children").addClass("current");
						}
					});
			}else{
				oLi.addClass('no_arrow');
			}
		});
	}

	//回到顶部按钮
	$(window).scroll(function(){
		var oThis      = $(this),
			oGo2Top    = $("a.go2top"),
			iWinHeight = oThis.height(),
			iScroll    = oThis.scrollTop();

		if(iScroll > iWinHeight){
			oGo2Top.addClass("visible");
		}else{
			oGo2Top.removeClass("visible");
		}
	});

	//搜索
	var oSearch = $('#s');
	if(oSearch.val() != ''){
		oSearch.addClass('bg_none');
	}
	oSearch.blur(function(){
		var oThis = $(this);
		if(oThis.val() != ''){
			oThis.addClass('bg_none');
		}else{
			oThis.removeClass('bg_none');
		}
	});

	/*** 右侧导航 ***/
	var oWindow      = $(window),
		oPage        = $("html,body"),
		iPageWidth   = oPage.width(),
		// iMainWidth   = $('.main_content').width(),
		oRightNav    = $('#right_nav'),
        content = $('.content-sidebar > .content');

    if (content.width() < 1130) {
        oRightNav.css('right', 0);
    } else {
        var right = oWindow.width() - 1500 - 40 - oRightNav.width();
        oRightNav.css('right', right);
    }
    oRightNav.show();

    oWindow.on('resize', function() {
        if (content.width() < 1130) {
            oRightNav.css('right', 0);
        } else {
            var right = oWindow.width() - 1500 - 40 - oRightNav.width();
            oRightNav.css('right', right);
        }
    });

	if(oRightNav.length > 0){
		var	iRightNavTop = oRightNav.offset().top,
			iRightNavMt  = parseInt(oRightNav.css('marginTop')),
			iRightNavH   = oRightNav.height(),
			oArticle     = $('.content-sidebar .content');
			oH2s         = oArticle.find('h2'),
			oRightNavLi  = oRightNav.find('> li'),
			aScroll      = [],

			oQuickEnt = $('div.quick_entrance'),
			iQuickEntTop = oQuickEnt.offset().top,
			iTopResult   = iRightNavMt-(iRightNavH-(iQuickEntTop-iRightNavTop))-5

		if(iRightNavTop+iRightNavH > iQuickEntTop && $('.jsdoc').length < 1){
			// oRightNav.css('marginTop', iTopResult)
		}

		if(oRightNav.offset().top > 100){
			oRightNav.css('visibility', 'visible')
		}

		// if($('.jsdoc').length < 1){
		// 	oRightNavLi.css('width', (iPageWidth-iMainWidth)/2-10)
		// }

		oH2s.each(function(i){
			var oThis = $(this)
			aScroll.push(oThis.offset().top - 85)
		})

		oRightNavLi.click(function(){
			var oThis = $(this),
				iThis = oThis.index(),
				oH2   = oH2s.eq(iThis)

			aScroll = []
			oH2s.each(function(i){
				var oThis = $(this)
				aScroll.push(oThis.offset().top - 85)
			})

			oRightNav.addClass('clicking')

			bScrolling = true
			oPage.animate({
				scrollTop:oH2.offset().top-84  //让body的scrollTop等于pos的top，就实现了滚动
			},100,function(){
				oRightNav.removeClass('clicking')
			});

			oRightNavLi.removeClass('current')
			oThis.addClass('current')
		})

		if(aScroll.length > 1){

			var sHash = location.hash.replace(/\#/i, '')

			if(sHash){

				var iScrollTop = $('a[name="'+sHash+'"]').offset().top+16
				// var iScrollTop = $(document).scrollTop()
				// var iScrollTop = $(document.documentElement).scrollTop() || $(document.body).scrollTop();

				for (var i = 1; i <= aScroll.length; i++) {
					if(iScrollTop >= aScroll[i-1] && iScrollTop <= aScroll[i]){
						oRightNavLi
							.removeClass('current')
							.eq(i-1).addClass('current')
						// break
					}

					if(i == aScroll.length && iScrollTop > aScroll[i-1]){
						oRightNavLi
							.removeClass('current')
							.eq(i-1).addClass('current')

					}
				}
			}


			oWindow.scroll(function(){
				if(oRightNav.hasClass('clicking')){
					return false
				}

				var iScrollTop = $(document).scrollTop()

				for (var i = 1; i <= aScroll.length; i++) {
					if(iScrollTop > aScroll[i-1] && iScrollTop < aScroll[i]){
						oRightNavLi
							.removeClass('current')
							.eq(i-1).addClass('current')
						break
					}

					if(i == aScroll.length && iScrollTop > aScroll[i-1]){
						oRightNavLi
							.removeClass('current')
							.eq(i-1).addClass('current')

					}
				};
			})

			// var iWinW = oWindow.width(),
			// 	iStand = 1694
			// if(iWinW > iStand && $('.jsdoc_nav').length > 0){
			// 	oRightNav.css('marginRight', iWinW-iStand)
			// }
		}
	}
	/*** /右侧导航 ***/

	$('#jsdoc').find('iframe:first + a').attr('target', '_blank')

	//下载统计代码绑定
	var oDownloadBox = $('.download_box')
	if(oDownloadBox.length > 0){
		oDownloadBox.each(function(i){
			var oThis = $(this),
				sId = oThis.attr('id'),
				sTitle = $.trim(oThis.find('h2 span').text())

			oThis.find('.do_download').click(function(){
				_czc.push(['_trackEvent', 'SDK下载', '点击', sTitle, '1', sId]);
			})
		})
	}

	//Web服务API/参考手册/demo/运行 统计代码绑定
	$('.restdemo-frame').each(function(i){
		var oIframe = $(this),
			sId = oIframe.attr('id'),
			sName = oIframe.attr('name')

		$(window.frames[sName]).load(function(){
			var oThis = $(this)

			$(window.frames[sName].document).find('.run').click(function(){
				_czc.push(['_trackEvent', 'Web服务API demo运行', '点击', sId,'1',sId]);
			})
		})

	})

});

var wUlShow = {},
	wUlHide = {}
function dropdown(show){
	$('ul.nav')
		.find('ul').removeClass('show').end()
		.find('.searh_wrapper').hide()
			.parent().removeClass('current')

	if(show){
		wUlShow.addClass('show')
	}
}

function removeHTMLTag(str) {
	str = str.replace(/<\/?[^>]*>/g,''); //去除HTML tag
	str = str.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
	str = str.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
	str=str.replace(/&nbsp/ig,'');//去掉&nbsp
	return str;
}

function fScrollTop(){
	$("html, body").animate({ scrollTop: 0 }, 399);
    return false;
}

function fScrollBottom(obj){// obj should be $("html, body")
	obj.animate({ scrollTop: obj.height() }, 399);
    return false;
}
