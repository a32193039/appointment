<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String rootPath = request.getContextPath();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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


<link rel="stylesheet" href="<%=rootPath %>/css/CMBase.css">
<link rel="stylesheet" href="<%=rootPath %>/css/CMskin.css">

<script type="text/javascript" src="<%=rootPath %>/js/jquery-1.9.1.js"></script>	
<script type="text/javascript" src="<%=rootPath %>/js/jsMD5.js"></script>	
<script type="text/javascript" src="<%=rootPath %>/js/postData.js"></script>	
<script type="text/javascript" src="<%=rootPath %>/js/common.js"></script>	

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
	




 <div class="s-head">
        <img class="img" src="<%=rootPath %>/images/lglogo.jpg" alt="" width="120">
        <span class="nav-info">
           <img src="<%=rootPath %>/images/cm-logo-r.png" alt="">
        </span>
    </div>
<script type="text/javascript">

  

</script>
</div>

<!---------顶部登录信息-------end -->

<!---------导航菜单-------start->
<!--导航菜单-->
 
<!---------导航菜单-------end->
	
<!--当前位置   --->
 

<!---------当前位置-------end->

<!---------主体内容------ start  -->
<div class="book_con">
	





<script src="<%=rootPath %>/js/IdCard.js"></script>
<script type="text/javascript" src="<%=rootPath %>/js/options.js"></script> 
<script type="text/javascript" src="<%=rootPath %>/js/mobiscroll.custom-2.6.2.min.js"></script> 
<link rel="stylesheet" type="text/css" href="<%=rootPath %>/css/mobiscroll.custom-2.6.2.min.css">
<div class="g-main">

    <!--面包屑-->
    <div class="w-bread-cream-box">
        当前位置：<span>个人信息</span>
        <a class="w-back-arrow-icon" href="javascript:history.go(-1);"></a>
    </div>
    <!--start-->
    <!--使用帮助-->
    <div class="w-help-cm-box" onclick="readme(&#39;请在此填写您的个人信息。为了保障您个人信息的安全，请务必填写正确的手机号码。&#39;);">
        <i class="a-help-icon"></i>
        <span>使用帮助</span>
    </div>
    
  <form id="input" name="input" action="http://aliwxbook.srv.api.ciming.com/weixinBookClient/retailInfoAdd.html" method="post">  
        <div class="w-form-need-box">
         <input type="hidden" id="sex" name="sex" value="">
         <input type="hidden" id="isMarry" name="isMarry" value="">
         <input type="hidden" id="race" name="race" value="03">
        <h4>必填项</h4>
        <ul>
            <li>
                <i class="w-icon w-icon-1"></i>
                <p class="line"></p>
                <select class="w-select" name="cardType" id="cardType" onchange="cardNoChange()">
                <option value="">证件类型（必填项）</option>
                    
                           <option value="01">身份证</option>
                     
                           <option value="02">警官证</option>
                     
                           <option value="03">军官证</option>
                     
                           <option value="05">护照</option>
                     
                           <option value="04">其他</option>
                     
                </select>
            </li>
            <li>
                <i class="w-icon w-icon-2"></i>
                <p class="line"></p>
               <input class="w-int" id="cardNo" name="cardNo" value="" placeholder="证件号码（必填项）" onchange="cardNoChange()">
            </li>
            <li>
                <i class="w-icon w-icon-3"></i>
                <p class="line"></p>
                <input class="w-int" id="customerName" name="customerName" value="" placeholder="受检人姓名（必填项）" onchange="cardNoChange()">
            </li>
            
            <li class="ptl">
                <span class="pl">婚否 :（必填项）</span>
                <p>
                    <span id="married" onclick="setMarry(&#39;1&#39;);">已婚</span>
                    <span id="unmarried" onclick="setMarry(&#39;2&#39;);">未婚</span>
                   
                </p>
            </li>
            <li class="ptl">
                <span class="pl">性别 :（必填项）</span>
                <p id="gender">
                    <span id="male" onclick="setGender(&#39;1&#39;);">男</span>
                    <span id="female" onclick="setGender(&#39;2&#39;);">女</span>
                </p>
            </li>
           
            <li>
                <i class="w-icon w-icon-4"></i>
                <p class="line"></p>
                 <input class="w-int" type="tel" maxlength="11" id="phone" name="phone" value="" autocomplete="off" placeholder="手机号码（必填项）">
            </li>
            <li>
                <i class="w-icon w-icon-5"></i>
                <p class="line"></p>
                <input class="w-int" placeholder="出生日期（必填项）" id="birthday" name="birthday" value="" readonly="">
            </li>
<!--  			<li>
                <i class="w-icon w-icon-7"></i>
                <p class="line"></p>
                <select class="w-select" id="race" name="race" >
                    <option value="">人种</option>
                </select>
            </li> -->
        </ul>
    </div>
    
    <div class="w-form-need-box">
        <h4 id="h4Title" class="wf-icon" onclick="changeShow();">选填项</h4>
        <ul id="optionDiv" style="display: none;">
            <li>
                <i class="w-icon w-icon-6"></i>
                <p class="line"></p>
                <select class="w-select" id="bloodType" name="bloodType">
                    <option value="">血型</option>
                <option value="01">A型</option><option value="02">B型</option><option value="03">O型</option><option value="04">AB型</option><option value="00">未知</option></select>
            </li>
            
            <li>
                <i class="w-icon w-icon-7"></i>
                <p class="line"></p>
               <select class="w-select" id="nation" name="nation">
                    <option value="">民族</option>
                <option value="01">汉族</option><option value="02">蒙古族</option><option value="03">回族</option><option value="4">藏族</option><option value="5">维吾尔族</option><option value="6">苗族</option><option value="7">彝族</option><option value="8">壮族</option><option value="9">布依族</option><option value="10">朝鲜族</option><option value="11">满族</option><option value="12">侗族</option><option value="13">瑶族</option><option value="14">白族</option><option value="15">土家族</option><option value="16">哈尼族</option><option value="17">哈萨克族</option><option value="18">傣族</option><option value="19">黎族</option><option value="20">傈僳族</option><option value="21">佤族</option><option value="22">畲族</option><option value="23">高山族</option><option value="24">拉祜族</option><option value="25">水族</option><option value="26">东乡族</option><option value="27">纳西族</option><option value="28">景颇族</option><option value="29">柯尔克孜族</option><option value="30">土族</option><option value="31">达斡尔族</option><option value="32">仫佬族</option><option value="33">羌族</option><option value="34">布朗族</option><option value="35">撒拉族</option><option value="36">毛难族</option><option value="37">仡佬族</option><option value="38">锡伯族</option><option value="39">阿昌族</option><option value="40">普米族</option><option value="41">塔吉克族</option><option value="42">怒族</option><option value="43">乌孜别克族</option><option value="44">俄罗斯族</option><option value="45">鄂温克族</option><option value="46">德昂族</option><option value="47">保安族</option><option value="48">裕固族</option><option value="49">京族</option><option value="50">塔塔尔族</option><option value="51">独龙族</option><option value="52">鄂伦春族</option><option value="53">赫哲族</option><option value="54">门巴族</option><option value="55">珞巴族</option><option value="56">基诺族</option><option value="57">穿青族</option><option value="58">其它</option></select>
            </li>
           
            <li>
                <i class="w-icon w-icon-7"></i>
                <p class="line"></p>
                 <select class="w-select" name="country" id="country">
                    <option value="">国籍</option>
                <option value="0086">中国</option><option value="001">美国</option><option value="007">俄罗斯联邦</option><option value="0011">加拿大</option><option value="0020">埃及</option><option value="0027">南非</option><option value="0030">希腊</option><option value="0031">荷兰</option><option value="0032">比利时</option><option value="0033">法国</option><option value="0034">西班牙</option><option value="0036">匈牙利</option><option value="0039">意大利</option><option value="0040">罗马尼亚</option><option value="0041">瑞士</option><option value="0043">奥地利</option><option value="0044">英国</option><option value="0045">丹麦</option><option value="0046">瑞典</option><option value="0047">挪威</option><option value="0048">波兰</option><option value="0049">德国</option><option value="0051">秘鲁</option><option value="0052">墨西哥</option><option value="0053">古巴</option><option value="0054">阿根廷</option><option value="0055">巴西</option><option value="0056">智利</option><option value="0057">哥伦比亚</option><option value="0058">委内瑞拉</option><option value="0060">马来西亚</option><option value="0061">澳大利亚</option><option value="0062">印度尼西亚</option><option value="0063">菲律宾</option><option value="0064">新西兰</option><option value="0065">新加坡</option><option value="0066">泰国</option><option value="0071">哈萨克斯坦共和国</option><option value="0081">日本</option><option value="0082">韩国</option><option value="0084">越南</option><option value="0090">土耳其</option><option value="0091">印度</option><option value="0092">巴基斯坦</option><option value="0093">阿富汗</option><option value="0094">斯里兰卡</option><option value="0095">缅甸</option><option value="0098">伊朗</option><option value="00212">摩洛哥</option><option value="00213">阿尔及利亚</option><option value="00216">突尼斯</option><option value="00218">利比亚</option><option value="00220">冈比亚</option><option value="00221">塞内加尔</option><option value="00222">毛里塔尼亚</option><option value="00223">马里</option><option value="00224">几内亚</option><option value="00225">科特迪瓦</option><option value="00226">布基拉法索</option><option value="00227">尼日尔</option><option value="00228">多哥</option><option value="00229">贝宁</option><option value="00230">毛里求斯</option><option value="00231">利比里亚</option><option value="00232">塞拉利昂</option><option value="00233">加纳</option><option value="00234">尼日利亚</option><option value="00235">乍得</option><option value="00236">中非</option><option value="00237">喀麦隆</option><option value="00238">佛得角</option><option value="00239">普林西比</option><option value="00240">赤道几内亚</option><option value="00241">加蓬</option><option value="00242">刚果</option><option value="00243">扎伊尔</option><option value="00244">安哥拉</option><option value="00245">几内亚比绍</option><option value="00246">迪戈加西亚</option><option value="00247">阿森松</option><option value="00248">塞舌尔</option><option value="00249">苏丹</option><option value="00250">卢旺达</option><option value="00251">埃塞俄比亚</option><option value="00252">索马里</option><option value="00253">吉布提</option><option value="00254">肯尼亚</option><option value="00255">坦桑尼亚</option><option value="00256">乌干达</option><option value="00257">布隆迪</option><option value="00258">莫桑比克</option><option value="00259">桑给巴尔</option><option value="00260">赞比亚</option><option value="00261">马达加斯加</option><option value="00262">留尼旺岛</option><option value="00263">津巴布韦</option><option value="00264">纳米比亚</option><option value="00265">马拉维</option><option value="00266">莱索托</option><option value="00267">博茨瓦纳</option><option value="00268">斯威士兰</option><option value="00269">马约特岛</option><option value="00290">圣赫勒拿</option><option value="00291">厄里特里亚</option><option value="00297">阿鲁巴岛</option><option value="00298">法罗群岛</option><option value="00299">格陵兰岛</option><option value="00350">直布罗陀</option><option value="00351">葡萄牙</option><option value="00352">卢森堡</option><option value="00353">爱尔兰</option><option value="00354">冰岛</option><option value="00355">阿尔巴尼亚</option><option value="00356">马耳他</option><option value="00357">塞浦路斯</option><option value="00358">芬兰</option><option value="00359">保加利亚</option><option value="00370">立陶宛</option><option value="00371">拉脱维亚</option><option value="00372">爱沙尼亚</option><option value="00373">摩尔多瓦</option><option value="00374">亚美尼亚共和国</option><option value="00375">白俄罗斯共和国</option><option value="00376">安道尔</option><option value="00377">摩纳哥</option><option value="00378">圣马力诺</option><option value="00380">乌克兰</option><option value="00381">南斯拉夫</option><option value="00385">科罗地亚</option><option value="00386">斯洛文尼亚</option><option value="00387">波斯尼亚和塞哥维那</option><option value="00389">马其顿</option><option value="00420">捷克</option><option value="00421">斯洛伐克</option><option value="00423">列支敦士登</option><option value="00500">福克兰群岛</option><option value="00501">伯利兹</option><option value="00502">危地马拉</option><option value="00503">萨尔瓦多</option><option value="00504">洪都拉斯</option><option value="00505">尼加拉瓜</option><option value="00506">哥斯达黎加</option><option value="00507">巴拿马</option><option value="00508">圣皮埃尔岛密克隆岛（法）</option><option value="00509">海地</option><option value="00590">瓜多罗普</option><option value="00591">玻利维亚</option><option value="00592">圭亚那</option><option value="00593">厄瓜多尔</option><option value="00594">法属圭亚那</option><option value="00595">巴拉圭</option><option value="00596">马提尼克</option><option value="00597">苏里南</option><option value="00598">乌拉圭</option><option value="00599">荷属安的列斯群岛</option><option value="00672">诺福克岛</option><option value="00673">文莱</option><option value="00674">瑙鲁</option><option value="00675">巴布亚新几内亚</option><option value="00676">汤加</option><option value="00677">所罗门群岛</option><option value="00678">瓦努阿图</option><option value="00679">斐济</option><option value="00680">帕劳</option><option value="00682">科克群岛</option><option value="00683">纽埃岛</option><option value="00684">东萨摩亚</option><option value="00685">西萨摩亚</option><option value="00686">基里巴斯</option><option value="00687">新咯里多尼亚群岛</option><option value="00688">图瓦卢</option><option value="00689">法属波里尼西亚、塔希提</option><option value="00690">托克鲁</option><option value="00691">密克罗尼西亚</option><option value="00692">马绍尔群岛</option><option value="00850">朝鲜</option><option value="00852">中国香港</option><option value="00853">中国澳门</option><option value="00855">柬埔寨</option><option value="00856">老挝</option><option value="00880">孟加拉国</option><option value="00886">中国台湾</option><option value="00960">马尔代夫</option><option value="00961">黎巴嫩</option><option value="00962">约旦</option><option value="00963">叙利亚</option><option value="00964">伊拉克</option><option value="00965">科威特</option><option value="00966">沙特阿拉伯</option><option value="00967">也门</option><option value="00968">阿曼</option><option value="00970">巴勒斯坦</option><option value="00971">阿联酋</option><option value="00972">以色列</option><option value="00973">巴林</option><option value="00974">卡塔尔</option><option value="00975">不丹</option><option value="00976">蒙古</option><option value="00977">尼泊尔</option><option value="00992">塔吉克斯坦共和国</option><option value="00993">土库曼斯坦共和国</option><option value="00994">阿塞拜疆</option><option value="00995">格鲁吉亚共和国</option><option value="00996">吉尔吉斯坦共和国</option><option value="00998">乌兹别克斯坦共和国</option><option value="001242">巴哈马</option><option value="001246">巴巴多斯</option><option value="001264">安圭拉岛</option><option value="001268">安提瓜和巴布达</option><option value="001340">维尔京群岛</option><option value="001345">开曼群岛</option><option value="001441">百慕大群岛</option><option value="001473">格林纳达</option><option value="001649">特克斯和凯科斯群岛</option><option value="001664">蒙特塞拉特岛</option><option value="001670">马里亚纳群岛</option><option value="001671">关岛</option><option value="001681">瓦里斯和富士那群岛</option><option value="001758">圣卢西亚</option><option value="001767">多米尼加联邦</option><option value="001784">圣文森特岛（英）</option><option value="001787">波多黎哥</option><option value="001808">威克岛</option><option value="001809">多米尼加共和国</option><option value="001868">特立尼达和多巴哥</option><option value="001869">圣克里斯托弗和尼维斯</option><option value="001876">牙买加</option><option value="001907">阿拉斯加</option><option value="002391">圣多美</option><option value="002691">科摩罗</option><option value="003422">加那利群岛(西)(圣克鲁斯)</option><option value="003428">加那利群岛(西)(拉斯帕尔马斯)</option><option value="0018081">中途岛</option><option value="0018082">夏威夷</option><option value="0018091">波多黎各</option><option value="00619162">科科斯岛</option><option value="00619164">圣诞岛</option><option value="003906698">梵蒂冈</option></select>
            </li>
            <li>
                <i class="w-icon w-icon-8"></i>
                <p class="line"></p>
                <input class="w-int" name="email" id="email" placeholder="电子邮箱" value="">
            </li>
        </ul>
    </div>
   </form>
    <div class="t-notice-box">
        <p>友情提示：</p>
        <p>预约记录只保存最后一次预约时约定的日期，过期后请您重新预约。客户可以在网上取消预约记录</p>
    </div>
</div>
<div class="x-menu-fix-box" id="footer">
    <div class="xm-inner">
        <div class="xm-btn">
            <input type="checkbox" id="except" name="except" checked="checked">
            <span class="f-green-txt" style="margin-right: 20px;" onclick="agreement()">服务协议</span>
            <a class="u-btn u-btn-well" id="tijiao" name="tijiao">下一步</a>
        </div>
    </div>
</div>
<script type="text/javascript">
	window.onresize = function() {
	    var top = $("#footer").offset().top;
	    var user_message_box = $('#footer');
	    top > 400 ? user_message_box.hide() : user_message_box.show();
	};
</script>	
<div id="w-error-popup-white" class="w-error-popup-white" style="display: none;">
    <div class="w-error-back"></div>
 
    <div class="w-error-inner" style="height: 68%;">
    	 <p style="text-align: center; padding: 10px 0;">联康体检服务条款</p>
        <div id="w-confirm-content" class="w-error-content" style=" height: 84%; overflow-y: auto; font-size: 26px;">
        <div class="w-close" onclick="agreement()"></div>
           
 <p>最后更新时间：2013年10月4日</p>
    <p>【注意】欢迎申请使用联康健康体检管理集团股份有限公司（下列简称为“联康体检”或“联康”）提供的服务。请您（下列简称为“用户”）仔细阅读以下全部内容（特别是粗体下划线标注的内容）。如用户不同意本服务条款任意内容，请勿注册或使用联康体检提供的服务。如用户通过进入注册程序并勾选“我同意联康体检服务条款”，即表示用户与联康体检已达成协议，自愿接受本服务条款的所有内容。此后，用户不得以未阅读本服务条款内容作任何形式的抗辩。</p>
    1.服务条款的确认和接纳<br>
    <p>
    联康体检涉及到的联康产品的所有权以及相关软件的知识产权归联康体检所有。联康体检所提供的服务必须按照其发布的公司章程，服务条款和操作规则严格执行。本服务条款的效力范围及于联康体检的一切产品和服务，用户在享受联康体检任何单项服务时，应当受本服务条款的约束。
    </p>
    <p>
    当用户使用联康体检各单项服务时，应以联康体检认可的方式同意该单项服务的服务条款以及联康体检在该单项服务中发出的各类公告（下列简称为“单项条款”），在此情况下单项条款与本服务条款同时对用户产生效力。若单项条款与本服务条款存在同类条款的冲突，则在单项条款约束范围内应以单项条款为准。
    </p>

    2.联康体检服务简介<br>

    <p>
    本服务条款所称的“联康体检通行证”是指用户注册的合法、有效的帐号，包括
    </p>

    （1）以“电子邮箱账号”注册的帐号（含以@163.com，@sina.com， @qq.com等为后缀的“邮箱账号”）<br>


    （2）以手机号码（@18888888888等）注册的帐号；<br>

    联康体检运用自己的操作系统通过国际互联网络为用户提供各项服务。用户必须：<br>

    （1）提供设备，如个人电脑、手机或其他上网设备。<br>

    （2）个人上网和支付与此服务有关的费用。<br>

    考虑到联康体检服务的重要性，用户同意：<br>

    （1）提供及时、详尽及准确的个人资料。<br>
    <p>
    （2）不断更新注册资料，符合及时、详尽准确的要求。联康体检注册资料包括：用户的联康体检帐号、密码及注册通行证或更新通行证注册资料时输入的所有信息。用户注册通行证账号时填写的身份证件信息不能更新。

    如果用户提供给联康体检的资料不准确，不真实，不合法有效，联康体检保留终止用户使用联康体检各项服务的权利。用户同意，其提供的真实、准确的联康体检通行证注册资料作为认定用户与其联康体检帐号的关联性以及用户身份的唯一证据。用户在享用联康体检各项服务的同时，同意接受联康体检提供的各类信息服务。联康体检提醒用户，用户注册通行证账号或更新注册信息时填写的证件号码，在注册通行证账号成功或补充填写后将无法进行修改，请用户慎重填写各类注册信息。

    用户同意与注册、使用联康体检帐号相关的一切资料、数据和记录，包括但不限于通行证帐号名称、注册信息、所有登录、消费记录和相关的使用统计数字等归联康健康体检管理集团股份有限公司所有。发生争议时，用户同意以联康健康体检管理集团股份有限公司的系统数据为准，联康健康体检管理集团股份有限公司保证该数据的真实性。

    尽管有前述约定，对于用户使用通行证帐号享受联康体检旗下单项服务（如游网上预约、报告查询等）时产生的一切数据，包括但不限于产品登录记录、消费记录及其他产品日志、产品客户服务记录、用户在产品中创造的社会网络内容等，归具体产品运营主体所有。发生争议时，用户同意以具体产品运营主体的系统数据为准。但是如果单项条款存在与前述不同的约定，则以单项条款约定为准。
    </p>
    3.服务条款的修改<br>
    <p>
    联康体检有权在必要时通过在网页上发出公告等合理方式修改本服务条款以及各单项服务的相关条款。用户在享受各项服务时，应当及时查阅了解修改的内容，并自觉遵守本服务条款以及该单项服务的相关条款。用户如继续使用本服务条款涉及的服务，则视为对修改内容的同意，当发生有关争议时，以最新的服务条款为准；用户在不同意修改内容的情况下，有权停止使用本服务条款涉及的服务。
    </p>
    4.服务的变更或中止<br>

    联康体检始终在不断变更和改进服务。联康体检可能会增加或删除功能，也可能暂停或彻底停止某项服务。用户同意联康体检有权行使上述权利且不需对用户或第三方承担任何责任。<br>

    5.用户隐私制度<br>
    <p>
    用户知悉并同意，为便于向用户提供更好的服务，联康体检将在用户自愿选择服务或者提供信息的情况下收集用户的个人信息，并将这些信息进行整合。在用户使用联康体检服务时，服务器会自动记录一些信息，包括但不限于URL、IP地址、浏览器类型、使用语言、访问日期和时间等。为方便用户登录或使用联康体检的服务，联康体检在有需要时将使用cookies等技术，并将收集到的信息发送到对应的服务器。用户可以选择接受或者拒绝cookies。如用户选择拒绝cookies，则用户有可能无法登陆或使用依赖于cookies的服务或者功能。联康体检收集的信息将成为联康体检常规商业档案的一部分，且有可能因为转让、合并、收购、重组等原因而被转移到联康体检的继任公司或者指定的一方。联康体检同意善意使用收集的信息，且采取各项措施保证信息安全。

    尊重用户个人隐私是联康体检的一项基本政策。所以，联康体检不会公开或透露用户的注册资料及保存在联康体检各项服务中的非公开内容，除非联康体检在诚信的基础上认为透露这些信息在以下几种情况是必要的：
    </p>
    （1）事先获得用户的明确授权；或<br>

    （2）遵守有关法律规定，包括在国家有关机关查询时，提供用户的注册信息、用户在联康体检的网页上发布的信息内容及其发布时间、互联网地址或者域名；或<br>

    （3）保持维护联康体检的知识产权和其他重要权利；或<br>

    （4）在紧急情况下竭力维护用户个人和社会大众的隐私安全；或<br>

    （5）根据本条款相关规定或者联康体检认为必要的其他情况下。<br>

    联康体检可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与联康体检同等的保护用户隐私的责任，则联康体检可将用户信息提供给该第三方。<br>

    6.用户的帐号、密码和安全性<br>
    <p>
    用户一旦注册成功成为用户，用户将得到一个密码和帐号。用户可随时改变用户的密码和图标，也可以结束旧的帐户重开一个新帐户。用户应维持密码及帐号的机密安全，如果用户未保管好自己的帐号和密码而对用户、联康体检或第三方造成损害，用户将负全部责任。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，有义务立即通告联康体检。
    </p>
    7.不可抗力条款<br>

    联康体检对不可抗力导致的损失不承担责任。本服务条款所指不可抗力包括：天灾、法律法规或政府指令的变更，因网络服务特性而特有的原因，例如境内外基础电信运营商的故障、计算机或互联网相关技术缺陷、互联网覆盖范围限制、计算机病毒、黑客攻击等因素，及其他合法范围内的不能预见、不能避免并不能克服的客观情况。<br>

    8.禁止服务的商业化<br>

    用户承诺，非经联康体检同意，用户不能利用联康体检各项服务进行销售或其他商业用途。如用户有需要将服务用于商业用途，应书面通知联康体检并获得联康体检的明确授权。<br>

    9.用户管理<br>

    用户独立承担其发布内容的责任。用户对服务的使用必须遵守所有适用于服务的地方法律、国家法律和国际法律。用户承诺：<br>

    （1）用户在联康体检的网页上发布信息或者利用联康体检的服务时必须符合中国有关法规，不得在联康体检的网页上或者利用联康体检的服务制作、复制、发布、传播以下信息：<br>

    (a) 违反宪法确定的基本原则的；<br>

    (b) 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br>

    (c) 损害国家荣誉和利益的；<br>

    (d) 煽动民族仇恨、民族歧视，破坏民族团结的；<br>

    (e) 破坏国家宗教政策，宣扬邪教和封建迷信的；<br>

    (f) 散布谣言，扰乱社会秩序，破坏社会稳定的；<br>

    (g) 散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的；<br>

    (h) 侮辱或者诽谤他人，侵害他人合法权益的；<br>

    (i) 煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；<br>

    (j) 以非法民间组织名义活动的；<br>

    (k) 含有法律、行政法规禁止的其他内容的。<br>

    （2）用户在联康体检的网页上发布信息或者利用联康体检的服务时还必须符合其他有关国家和地区的法律规定以及国际法的有关规定。用户需遵守法律法规的规定使用联康体检提供的服务。<br>

    （3）用户不得利用联康体检的服务从事以下活动：<br>

    (a) 未经允许，进入计算机信息网络或者使用计算机信息网络资源的；<br>

    (b) 未经允许，对计算机信息网络功能进行删除、修改或者增加的；<br>

    (c) 未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的；<br>

    (d) 故意制作、传播计算机病毒等破坏性程序的；<br>

    (e) 其他危害计算机信息网络安全的行为。<br>

    （4）用户不得以任何方式干扰联康体检的服务。<br>

    （5）用户不得滥用联康体检服务，包括但不限于：利用联康体检提供的邮箱服务发送垃圾邮件，利用联康体检服务进行侵害他人知识产权或者合法利益的其他行为。<br>

    （6）用户应遵守联康体检的所有其他规定和程序。<br>
    <p>
    用户须对自己在使用联康体检服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：对受到侵害者进行赔偿，以及在联康体检首先承担了因用户行为导致的行政处罚或侵权损害赔偿责任后，用户应给予联康体检等额的赔偿。若用户违反以上规定，联康体检有权作出独立判断立即暂停或终止对用户提供部分或全部服务，包括冻结、取消用户服务帐号等措施。用户理解，如果联康体检发现其网站传输的信息明显属于上段第(1)条所列内容之一，依据中国法律，联康体检有义务立即停止传输，保存有关记录，向国家有关机关报告，并且删除含有该内容的地址、目录或关闭服务器。
    </p>
    10.保障<br>
    <p>
    用户同意保障和维护联康体检全体成员的利益，承担由用户违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号而产生的费用。用户或者使用用户帐号的其他人在进行游戏过程中侵犯第三方知识产权及其他权利而导致被侵权人索赔的，由用户承担责任。

    如用户或其它网络服务提供者利用联康体检的服务侵害他人民事权益的，应当承担侵权等法律责任。

    如用户利用联康体检的服务实施侵权行为的，被侵权人有权通知联康体检采取删除、屏蔽、断开链接等必要措施。联康体检接到通知后，因自身过错若未及时采取必要措施的，按法律规定承担责任。
    </p>
    11.通知<br>

    所有发给用户的通知都可通过电子邮件、常规的信件或在网站显著位置公告的方式进行传送。联康体检将通过上述方法之一将消息传递给用户，告知他们服务条款的修改、服务变更、或其它重要事情。同时，联康体检保留对申请了通行证的用户投放商业性广告的权利。<br>

    12.内容、商标的所有权<br>

    联康体检提供的内容包括但不限于：非用户上传/提供的文字、软件、声音、相片、视频、图表等。所有这些内容均属于联康体检，并受版权、商标、专利和其它财产所有权法律的保护。所以，用户只能在联康体检授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。<br>

    联康体检的其他标志及联康体检产品、服务的名称，均为联康体检之商标（以下简称“联康体检标识”）。未经联康体检事先书面同意，您不得将联康体检标识以任何方式展示或使用或作其他处理，也不得向他人表明您有权展示、使用、或其他有权处理联康体检标识的行为。

    13.法律<br>

    本条款适用中华人民共和国的法律，并且排除一切冲突法规定的适用。<br>

    如出现纠纷，用户和联康体检一致同意将纠纷交由联康健康体检管理集团股份有限公司所在地法院管辖。<br>

    14.信息储存及相关知识产权<br>
    <p>
    联康体检对通行证上所有服务将尽力维护其安全性及方便性，但对服务中出现的信息（包括但不限于用户发布的信息）删除或储存失败不承担任何责任。另外联康体检有权判定用户的行为是否符合本服务条款的要求，如果用户违背了本服务条款的规定，联康体检有权中止或者终止对其联康体检帐号的服务。

    联康体检尊重知识产权并注重保护用户享有的各项权利。在联康体检所含服务中，用户可能需要通过上传、发布等各种方式向联康体检提供内容。在此情况下，用户仍然享有此等内容的完整知识产权。用户在提供内容时将授予联康体检一项全球性的免费许可，允许联康体检使用、传播、复制、修改、再许可、翻译、创建衍生作品、出版、表演及展示此等内容。
    </p>
    15.青少年用户特别提示<br>

    青少年用户必须遵守全国青少年网络文明公约：<br>

    要善于网上学习，不浏览不良信息；要诚实友好交流，不侮辱欺诈他人；要增强自护意识，不随意约会网友；要维护网络安全，不破坏网络秩序；要有益身心健康，不沉溺虚拟时空。<br>

    16.联康体检帐号的有效期<br>

    用户清楚知悉联康体检帐号存在有效期，并同意不定时登录使用联康体检帐号以延续其有效期。<br>

    一般情况：<br>

    (1)如果用户的联康体检帐号连续540天没有登录，则联康体检有权删除该联康体检帐号； 并有权立即终止该帐号下的服务并将账户信息删除；

    当帐号被删除后，该联康体检帐号的所有资料以及与该联康体检帐号相关的全部服务资料和数据将同时删除，且不可恢复。该帐号名有可能会被新的用户注册。

    登录联康体检是指通过联康体检帐号密码认证，包括但不限于如下方式：<br>

    (1)通过Web方式登录；<br>

    (2)通过手机客户端软件登录；<br>

    17.其他<br>

    （1）联康体检不行使、未能及时行使或者未充分行使本条款或者按照法律规定所享有的权利，不应被视为放弃该权利，也不影响联康体检在将来行使该权利。<br>

    （2）如本条款中的任何条款无论因何种原因完全或部分无效或不具有执行力，本服务条款的其余条款仍应有效且具有约束力，联康体检及用户均应尽力使该条款设定的本意得到实现。<br>

    （3）本条款中的标题仅为方便而设，不作为解释本条款的依据。<br>

    如用户对本条款内容有任何疑问，可拨打客服电话（4007-000－666）或登录帮助中心（http://book.ciming.com/help.htm）进行查询。<br>
        </div>
    </div>
</div>
 <div id="w-error-popup-white_foot" class="w-error-popup-white" style="display: none;">
    <div class="w-error-back"></div>

    <div class="w-error-inner">
        <div id="w-confirm-content_foot" class="w-error-content" style="height: auto; font-size: 26px;">
            
            取消后不能恢复，确定取消么？</div>
        <div class="btn" style="padding: 1rem; text-align: right;">
            <a id="sure" class="u-btn">确定</a>
        </div>
    </div>
</div> 
<div id="w-error-popup-white_foot_help" class="w-error-popup-white" style="display: none;">
    <div class="w-error-back"></div>
    <div class="w-error-inner">
        <div class="w-error-content" style="height: auto; font-size: 26px;">
        	<img style="padding: 0 0 20px 0;" src="<%=rootPath %>/images/tishi.png" alt="">
        	<p id="w-confirm-content_foot_help"></p>
        </div>
        <div class="btn" style="padding: 1rem; text-align: center;">
            <a class="u-btn u-btn-orange" href="javascript:closeRead();">知道了</a>
        </div>
        <img style="position: absolute; right: 0; bottom: 10px;" src="<%=rootPath %>/images/person.png" alt="">
    </div>
</div>
<script type="text/javascript">
$(function () {  
	 var opt = {  
	         theme: "android-ics light", 
	         display: 'modal', //显示方式  
	         lang: "zh",  
	         setText: '确定', //确认按钮名称
	         cancelText: "取消",  
	         dateFormat: 'yyyy-mm-dd', //返回结果格式化为年月格式  
	         dateOrder: 'yyyymmdd', //面板中日期排列格式
	         endYear: (new Date()).getFullYear() , //结束年份
	         height: 60,
	         width: 120,
 
	         onBeforeShow: function (inst) {
	 		//	console.info( inst.settings.wheels);
	           }, 
	         headerText: function (valueText) { //自定义弹出框头部格式  
	    
	             array = valueText.split('-');  
	             return array[0] + "年" + array[1] + "月" + array[2] + "日";  
	         }  
	     };

	   $("#birthday").mobiscroll().date(opt); 
	   initOption("bloodType",bloodTypeList,'');
	   initOption("nation",nationList,'');
	   
	   var t_race = '';
	   if(t_race==null || t_race==""){
		   t_race="03";
	   }
	   $("#race").val(t_race)
//	   initOption("race",raceList,t_race);
	   initOption("country",countryList,'');
	   setGender('');
	   setMarry('');
	   
	   var s = '';
	   if(s!=null&&s!=""){
		   $("#male").removeAttr("onclick");
		   $("#female").removeAttr("onclick");
	   }
	   
	   var birth = $('#birthday').val();
	   
	   if(birth.length==10)
		{

	   				$('#birthday').attr("disabled",true);
		}else{
			$('#birthday').attr("disabled",false);
		}
	   
	   $("#phone").attr("value","");
	 });
	 
$('#optionDiv').hide();
	 
$('#tijiao').click( function() {

	if (!$('#except').is(':checked')) {
		errorPromptNew("同意服务条款才能继续预约",'');
		return false;
		
	}
	var cardType = $("#cardType").val();
	if(!cardType){
		errorPromptNew("证件类型是必填项",'cardType');
	//	 $("#cardType").focus();  
		return false;
	}

	var cardNo = $("#cardNo").val();
	if(!cardNo){
		errorPromptNew("证件号是必填项",'cardNo');
	//	 $("#cardNo").focus();  
		return false;
	}
	if(cardNo.length>=30){
		errorPromptNew("输入正确的证件信息",'cardNo');
//		 $("#cardNo").focus();  
		return false;
	}
	if ($("#cardType").val() == "01") {
		var ck = new Qhjsw.IDChecks(cardNo);
		var tip = ck.IDCk();
		if (!tip.pass) {
			errorPromptNew("身份证号码格式 不正确",'cardNo');
//			 $("#cardNo").focus();  
			return false;
		}
	}

	
	var customerName=$("#customerName").val();
	if(!customerName){
		errorPromptNew("受检人姓名 是必填项",'customerName');
//		 $("#customerName").focus();  
		return false;
	}
/* 	var name_regular= /^[\u4e00-\u9fa5\0-9·•]{2,30}$|^[a-zA-Z0-9·•]{2,30}$/;
	if (!name_regular.test(customerName)) {
		errorPromptNew("受检人姓名 格式不正确",'customerName');
		return false;
	} */
	var isMarry = $("#isMarry").val();
	if(!isMarry){
		errorPromptNew("婚姻情况是必填项",'');
		 $("#married").attr("tabindex",0);
		 $("#married").attr("hidefocus",true);
	//	 $("#sex").focus();  
		return false;
	}
	
	var sex=$("#sex").val();
	if(!sex){
		errorPromptNew("性别是必填项",'');
	//	 $("#sex").focus();  
		return false;
	}

	var tel_regular = /^(12|13|14|15|16|17|18)+[0-9]{9}$/;
	var phone=$("#phone").val();
	if(!phone){
		errorPromptNew("手机号码 是必填项",'phone');
//		 $("#phone").focus();  
		return false;
	}
	if (!tel_regular.test(phone)) {
		errorPromptNew("手机号码格式 不正确",'phone');
//		 $("#phone").focus();  
		return false;
	}

	var birthday=$("#birthday").val();
	if(!birthday){
		errorPromptNew("出生日期是必填项",'birthday');
//		 $("#birthday").focus();  
		return false;
	}
	
/* 	var race = $("#race").val();
	if(!race){
	errorPromptNew("人种是必填项",'race');
		return false;
	} */
	
	var bloodType = $("#bloodType").val();
	
	
	var nation = $("#nation").val();
	
	var race = $("#race").val();
	
	var country = $("#country").val();
	
	var email = $("#email").val();
	if(email){
		var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;  
	    if (!pattern.test(email)) {  
	        errorPromptNew("请输入正确的邮箱地址.",'email');
	//        $("#email").focus();  
	        return false;  
	    }  
	}
	 
	
	post('<%=rootPath %>/personal', {cardType : cardType, cardNo : cardNo,customerName:customerName,sex:sex,phone:phone,birthday:birthday,bloodType:bloodType,isMarry:isMarry,nation:nation,race:race,country:country,email:email});
	
	//$('#input').submit();; 
});

function	cardNoChange(){
	var	cardNo_val = $("#cardNo").val();
	if(cardNo_val=="" || cardNo_val == undefined){
		return false;
	}
	if ($("#cardType").val() == "01") {
	//	$('#gender').attr("disabled",true);
		$('#birthday').attr("disabled",true);
		var ck = new Qhjsw.IDChecks(cardNo_val);
		var tip = ck.IDCk();
		if (!tip.pass) {
			errorPromptNew("身份证号码格式 不正确",'');
			return false;
		}else{

		//	$("#sex").find("option[text='"+tip.sextag+"']").attr("selected",true);
		    $("#sex").val(tip.sextag);
		    setGender(tip.sextag);
		    $("#male").removeAttr("onclick");
			$("#female").removeAttr("onclick");
			$("#birthday").val(tip.birthday);
			
		}
		
	} else {
	//	$('#gender').attr("disabled",false);
		$('#birthday').attr("disabled",false);
	}
	if( (!isNull($("#cardType").val())) && 
	    (!isNull(cardNo_val)) && 
	    (!isNull($("#customerName").val()))
	    )
	{
		showData($("#cardType").val(),cardNo_val, $("#customerName").val());
	}
	
	
}

function showData(cardType,cardId,names){	
	$.ajax({
		 async:false, 
         type:"post",        //post方式
         cache: false,     
         data: {"cardType":cardType,"cardId":cardId,"names":names},
		 url : "http://aliwxbook.srv.api.ciming.com/weixinBookClient/checkPersonId.html",
		 dataType :"json",
		success : function(data) {
	//		console.log(data);
			$("#bloodType").val(data.bloodType);
			
			$("#nation").val(data.nation);
			$("#race").val(data.race);
			$("#country").val(data.nationality);
			$("#email").val(data.email);
			$("#customerName").val(data.names);
			$("#phone").val(data.phone);
			$("#birthday").val(data.birthDate);
			setGender(data.sex);
			setMarry(data.isMarry);
			if(data.sex!=null && data.sex!="" ){
				 $("#male").removeAttr("onclick");
				   $("#female").removeAttr("onclick");
			   }
			
			
		},
		error : function() {
			/* $("#bloodType").val("");
			$("#isMarry").val("");
			$("#nation").val("");
			$("#race").val("");
			$("#country").val("");
			$("#email").val("");
			$("#customerName").val("");
			$("#phone").val("");
			if(cardType!="01"){
				$("#sex").val("");
				$("#birthday").val("");
			} */
			
			return;
		}
	});
 }
 
function selectGender(){
	if($("#male").attr('class')=="cur"){
		$("#male").attr('class','');
		$("#female").attr('class','cur');
		setGender('2');
		return;
	}
	if($("#female").attr('class')=="cur"){
		$("#male").attr('class','cur');
		$("#female").attr('class','');
		setGender('1');
		return;
	}
} 

function selectMarry(){
	if($("#married").attr('class')=="cur"){
		$("#married").attr('class','');
		$("#unmarried").attr('class','cur');
		setMarry('2');
		return;
	}
	if($("#unmarried").attr('class')=="cur"){
		$("#married").attr('class','cur');
		$("#unmarried").attr('class','');
		setMarry('1');
		return;
	}
} 

function setGender(sex){

	if(!sex){return;}

	$("#sex").val(sex);
	
	if(sex=="1"){

		$("#male").attr('class','cur');
		$("#female").attr('class','');
	}else {

		$("#female").attr('class','cur');
		$("#male").attr('class','');
	}
}
function setMarry(isMarry){
	
	if(!isMarry){return;}

	$("#isMarry").val(isMarry);
	if(isMarry=="1"){

		$("#married").attr('class','cur');
		$("#unmarried").attr('class','');
	}else {

		$("#unmarried").attr('class','cur');
		$("#married").attr('class','');
	}
}
function changeShow(){
	$("#optionDiv").toggle();
	$("#h4Title").toggleClass("h4Current");
}
function agreement(){
	$("#w-error-popup-white").toggle();
}

function errorPromptNew(msg,divName){
	$("#w-error-popup-white_foot").css("display","block");
	$("#w-confirm-content_foot").html(msg);
	if(divName!=''){
		$("#sure").click(function() {
		//	 $("#"+divName).focus();  
			$("#w-error-popup-white_foot").css("display","none");});
	}else {
		$("#sure").click(function() {
			$("#w-error-popup-white_foot").css("display","none");});
	}
	
}

function readme(msg){
	
	$("#w-error-popup-white_foot_help").css("display","block");
	$("#w-confirm-content_foot_help").html(msg);
}

function closeRead(){
	$("#w-error-popup-white_foot_help").css("display","none");
}	 
	 
</script>
</div>


<!---------主体内容------ end   -->

<!---------主体内容------ end    -->
	
<!----------底部 ----- start --->
<div class="cus_bottom">
	
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

		<div class="dw-hidden" role="alert"></div>
		<div id="loading_area" style="display: none;width: 100%;position: fixed;z-index: 99999;height: 100%;top: 0;background-color: rgba(0,0,0,0.8);padding: 0 38%;box-sizing: border-box;">
			<div style="background: url(http://video.soundtooth.cn/dist/skin/blue.monday/image/loading.gif) no-repeat;background-size: contain;width: 40px;height: 40px;margin: 250px auto 0;"></div>
			<div style="font-size: 14px;text-align: center;margin-top: 10%; color: #cccccc;">正在为您配置加速环境</div>
		</div>
	</body>
	</html>