<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	String rootpath=request.getContextPath();
 
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0103)http://aliwxbook.srv.api.ciming.com/weixinBookClient/?code=013jByZZ1s7aS01JO8202NSvZZ1jByZV&state=STATE -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="联康体检,在线预约,报告查询,健康管理">  
<meta name="keywords" content="联康体检,在线预约,报告查询,健康管理">
<meta name="robots" content="all">
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache, must-revalidate">  
    <meta http-equiv="expires" content="0">   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     
    <meta name="viewport" content="target-densitydpi=device-dpi, width=740px, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
<title>联康移动预约平台</title> 


<link rel="stylesheet" href="./css/CMBase.css">
<link rel="stylesheet" href="./css/CMskin.css">

<script type="text/javascript" src="./js/jquery-1.9.1.js"></script>	
<script type="text/javascript" src="./js/jsMD5.js"></script>	
<script type="text/javascript" src="./js/postData.js"></script>	
<script type="text/javascript" src="./js/common.js"></script>	

<script type="text/javascript">

String.prototype.format = function(args) {
    var result = this;
    if (arguments.length > 0) {    
        if (arguments.length == 1 && typeof (args) == "object") {
            for (var key in args) {
                if(args[key]!=undefined){
                    var reg = new RegExp("({" + key + "})", "g");
                    result = result.replace(reg, args[key]);
                }
            }
        }
        else {
            for (var i = 0; i < arguments.length; i++) {
                if (arguments[i] != undefined) {
                    var reg = new RegExp("({[" + i + "]})", "g");
                    result = result.replace(reg, arguments[i]);
                }
            }
        }
    }
    return result;
}



</script>
</head>

<body>
<!---------顶部登录信息-------start --->

<div class="cus_top">
	
</div>

<!---------顶部登录信息-------end -->

<!---------导航菜单-------start->
<!--导航菜单-->
 
<!---------导航菜单-------end->
	
<!--当前位置   --->
 

<!---------当前位置-------end->

<!---------主体内容------ start  -->
<div class="book_con">
	





    <title>在线预约--预约验证</title>
    <link rel="stylesheet" href="./css/CMBase.css">
    <link rel="stylesheet" href="./css/CMskin.css">
    <link rel="stylesheet" href="./css/index.css">
    <script type="text/javascript" src="./js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="./js/TouchSlide.1.1.js"></script>
    
    <style>
    /* 本例子css -------------------------------------- */
    
    </style>
<div class="g-main">
    <div class="t-service-index-box">
        <!--信息轮播-->
         
		     
		   <img class="ti-img" src="./images/test-img.jpg" alt="">  
		   
		  
        
     </div>
    <script type="text/javascript">
        TouchSlide({
            slideCell:"#slideBox",
            titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
            mainCell:".bd ul",
            effect:"leftLoop",
            autoPage:true,//自动分页
            autoPlay:true, //自动播放
            delayTime:1200,
            interTime:5000,
        });
    </script><!--end-->
        <script type="text/javascript">
        TouchSlide({
            slideCell:"#slideBoxOne",
            titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
            mainCell:".bd ul",
            effect:"leftLoop",
            autoPage:true,//自动分页
            autoPlay:false, //自动播放
            delayTime:1200,
            interTime:5000,
        });
    </script><!--end-->
    <!--体检预约-->
     <div class="t-navSlide-index-box">
        <h3 class="w-index-title-box">
        <span>用户自主在线预约服务，体检快人一步！</span><!-- <i class="w-plan-icon"></i> -->
        	体检预约
        </h3>
        <div class="tv-btn">
            <div class="tb">
                <a style="height: 177px;" onclick="startBook(0);"><i class="w-dabble-person"></i>个人用户</a>
               <!--  <a onclick="startBookCo(&#39;tb&#39;);"><i class="w-tao-person"></i>电子码用户</a> -->
            </div>
            <div class="tb">
                <a style="height: 177px;" class="yellow" onclick="startBookCo(&#39;base&#39;)"><i class="w-dabble-person"></i>企业用户</a>
            </div>
        </div>
    </div>
    <!--end-->
    <!--其他服务-->
    <div class="t-other-service-box">
        <div class="t-swap-weixin" onclick="mySweep();"> 
                <img style="" src="./images/wx47ba0dd8bf0f93e5.jpg" alt="">
        </div>
        <h3 class="w-index-title-box"><!-- <i class="w-other-service-icon"></i> -->其他服务</h3>
        <div class="ts">
            <a onclick="myBookList();">
                <i class="w-index-icon w-index-icon-1"></i>
                <span>预约查询</span>
            </a>
            <a href="./paymentList/paymentList.html">
                <i class="w-index-icon w-index-icon-4"></i>
                <span>订单查询</span>
            </a>
            <a href="./reportList/reportList.html">
                <i class="w-index-icon w-index-icon-2"></i>
                <span>体检报告</span>
            </a>
            <a href="./callCenter/callCenter.html">
                <i class="w-index-icon w-index-icon-3"></i>
                <span>客服中心</span>
            </a>
        </div>
    </div>
</div>
<div id="wepbox" class="w-error-popup-white" style="display: none;">
    <div class="w-error-back"></div>
    <div class="w-error-inner">
    	<div class="w-close" style="right:-7px;" onclick="agreementClose()"></div>
    	<img style="width: 100%;" src="./images/swap-wx47ba0dd8bf0f93e5.jpg" alt="">
    </div>
</div>
<script type="text/javascript">

$(function(){  
    $("#changeLocale1").click(function(){  
    	$.ajax({
			url : "http://aliwxbook.srv.api.ciming.com/weixinBookClient/changeLocale.html",
			type : 'post',
			dataType : 'json',
			data : {
				'locale':'en_US'
			},
			async : false,
			success : function(result) {
				if(result.success){
					window.location.reload(); 
				}else{
					errorPrompt("切换失败！");
				}
				
			},
			error : function(a,b,c) {
				errorPrompt("网络异常");
			}
		});
    });  
    $("#changeLocale").click(function(){  
    	$.ajax({
			url : "http://aliwxbook.srv.api.ciming.com/weixinBookClient/changeLocale.html",
			type : 'post',
			dataType : 'json',
			data : {
				'locale':'zh_CN'
			},
			async : false,
			success : function(result) {
				if(result.success){
					window.location.reload(); 
				}else{
					errorPrompt("切换失败！");
				}
			},
			error : function(a,b,c) {
				errorPrompt("网络异常");
			}
		});
    });  
}) 


function startBook(bookType){
	if(''=='true'){
		errorPrompt('此公众号暂不支持');
		return;
	}
	post('<%=rootpath%>/cityList',{bookType : bookType});
}

function startBookCo(sign){
	if(sign=='base' && ''=='true'){
		errorPrompt('此公众号暂不支持');
		return;
	}
	post('./checkCust/checkCust.html',{custcode : sign});
}

function bookDetail(managePerson){
/* 	console.log(managePerson); */
	post('http://aliwxbook.srv.api.ciming.com/weixinBookClient/bookDetail.html', {managePerson:managePerson});
}

function myBookList(){
	post('./bookList/bookList.html');
}
function mySweep(){
	$("#wepbox").show();
}
function agreementClose(){
	$("#wepbox").hide();
}
</script>
</div>


<!---------主体内容------ end   -->

<!---------主体内容------ end    -->
	
<!----------底部 ----- start --->
<div class="cus_bottom">
	




<div id="w-error-popup-white_foot" class="w-error-popup-white" style="display: none;">
    <div class="w-error-back"></div>

    <div class="w-error-inner">
        <div id="w-confirm-content_foot" class="w-error-content" style="height: auto; font-size: 26px;">
            
            取消后不能恢复，确定取消么？</div>
        <div class="btn" style="padding: 1rem; text-align: right;">
            <a id="sure" class="u-btn" href="javascript:noneError();">确定</a>
        </div>
    </div>
</div> 
<div id="w-error-popup-white_foot_help" class="w-error-popup-white" style="display: none;">
    <div class="w-error-back"></div>
    <div class="w-error-inner">
        <div class="w-error-content" style="height: auto; font-size: 26px;">
        	<img style="padding: 0 0 20px 0;" src="./images/tishi.png" alt="">
        	<p id="w-confirm-content_foot_help"></p>
        </div>
        <div class="btn" style="padding: 1rem; text-align: center;">
            <a class="u-btn u-btn-orange" href="javascript:closeRead();">知道了</a>
        </div>
        <img style="position: absolute; right: 0; bottom: 10px;" src="./images/person.png" alt="">
    </div>
</div>
  <div class="x-menu-fix-box" id="footer" >
  <input type="hidden" id="ttt" name="ttt" value="">
    <div id="foot1" class="xm-inner">
        <p class="active" onclick="doClick(this)">
            <i class="x-foot-icon"></i>
            <a href="./index.html"><span>首页</span></a>
        </p>
        <p onclick="doClick(this)">
            <i class="x-foot-buy-icon"></i>
            <a href="./needToKnow/needToKnow.html"><span>须知</span></a>
        </p>
        <p onclick="doClick(this)">
            <i class="x-foot-tel-icon"></i>
            <a href="./call/call.html"><span>客服   </span></a>
        </p>
        <p onclick="doClick(this)">
            <i class="x-foot-person-icon"></i>
            <a href="./myCenter/myCenter.html"><span>我的</span></a>
        </p>
    </div>
</div>

<script type="text/javascript">
function doClick(obj){

	jQuery("#foot1 p").removeClass("active");
	jQuery(obj).addClass("active");
	var h=jQuery(obj).find("a").attr('href');
	if(h){
		post(h,'');
	}
	
}
</script>
</div>
<!--------  	 底部   ---end------->	

<script type="text/javascript">
$(function(){
	$(window).resize(function () {
	  tabPanelAdjust();
	});
})
function tabPanelAdjust() {
	    var top = $("#footer").offset().top;
	    var user_message_box = $('#footer');
	    top > 400 ? user_message_box.hide() : user_message_box.show();
};
</script>	

<script type="text/javascript">
/* function isNull(data){
	if (variable1 !== null || variable1 !== undefined || variable1 !== '') { 
		return false; 
	} else return true;
} */

</script>

	<div id="loading_area" style="display: none;width: 100%;position: fixed;z-index: 99999;height: 100%;top: 0;background-color: rgba(0,0,0,0.8);padding: 0 38%;box-sizing: border-box;"><div style="background: url(http://video.soundtooth.cn/dist/skin/blue.monday/image/loading.gif) no-repeat;background-size: contain;width: 40px;height: 40px;margin: 250px auto 0;"></div><div style="font-size: 14px;text-align: center;margin-top: 10%; color: #cccccc;">正在为您配置加速环境</div></div></body></html>