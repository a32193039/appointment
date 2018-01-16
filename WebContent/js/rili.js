function Gid(objectId) {
	if (document.getElementById && document.getElementById(objectId)) {
		// W3C DOM
		return document.getElementById(objectId);
	} else if (document.all && document.all(objectId)) {
		// MSIE 4 DOM
		return document.all(objectId);
	} else if (document.layers && document.layers[objectId]) {
		// NN 4 DOM.. note: this won't find nested layers
		return document.layers[objectId];
	} else {
		return false;
	}
}
var DtaT = rili_json.nowdate.split("-");
var date1, date2, day, Oyear = DtaT[0],
	Omouth = DtaT[1],
	Oday = DtaT[2],
	Ohour = DtaT[3],
	st = 0;

Omouth = Omouth.length == 1 ? "0" + Omouth : Omouth;
//Oday = Oday.length == 1 ? "0" + Oday : Oday;
var maxT = rili_json.maxDate.split("-");
var maxYear=maxT[0],
	maxMouth=maxT[1];
//获取当前日期数据
var html = '', 
	//yi, 
	//mi, 
	//di,
	arrs_h=[],
	arrs_n=[];
	
var today = new Date();
var hours = today.getHours(),
	minutes = today.getMinutes();
var UrlS = location.href;
var DtaId = location.href.split("/");

function getFullYear(d) {
	yr = d.getYear();
	if (yr < 1000) yr += 1900;
	return yr;
}

function JCalendar(year, month, date) {
	var _date = arguments.length == 0 ? new Date() : new Date(year, month - 1, date);
	//实例变量
	this.year = Oyear;
	this.month = Omouth;
	this.date = Oday;

	this.fday = new Date(this.year, this.month - 1, 1).getDay(); //每月第一天的前一天星期数
	this.dayNum = new Date(this.year, this.month, 0).getDate(); //每月的天数
	//成员变量，当前年月日
	JCalendar.cur_year = Oyear;
	JCalendar.cur_month = Omouth;
	//JCalendar.cur_date = _date.getDate();
	JCalendar.cur_date = Oday;
/*	setCurTime({
		//F: Gid("index_history"),
		Y: JCalendar.cur_year,
		M: JCalendar.cur_month,
		D: JCalendar.cur_date
	});*/
}
JCalendar.prototype.show = function() {
	var _th = this;
	var fday = new Date(this.year, this.month - 1, 1).getDay(); //每月第一天的星期数
	//日历里的每个单元格的数据，预先定义一段空数组，对应日历里第一周空的位置。[注意星期天对应的数是0]
	var date = new Array(fday > 0 ? fday : 0);
	var dayNum = new Date(this.year, this.month, 0).getDate(); //每月的天数
	var html_str = new Array(); //保存日历控件的HTML代码
	var date_index = 0; //date数组的索引
	var weekDay = ["一", "二", "三", "四", "五"];
	for (var j = 1; j <= this.dayNum; j++) { //初始化date数组
		date.push(j);
	}
	html_str.push("<table id='calendar' cellspacing='0' cellpadding='0' width='100%'>");
	html_str.push("<th colspan='7' style='border-bottom:1px solid #CDCFD3;background:#FFF'><p title='上一月份' onclick=\"JCalendar.update(-1);return false\" style='float:left;' class='prev'><img src='./images/prev.png' width='40' height='40' /></p><p id='calendar_title' style='float:left;color:#333;font-weight:normal;font-size:28px; width: 87%;'>" + _th.year + "年" + _th.month + "月</p><p title='下一月份' onclick=\"JCalendar.update(1);return false\" style='float:right;' class='next'><img src='./images/next.png' width='40' height='40' /></p></th>");
	html_str.push("<tr>");
	html_str.push("<td style='background:#fff;'>日</td>");
	for (var i = 0; i < 5; i++) { //填充日历头
		html_str.push("<td style='background:#fff'>" + weekDay[i] + "</td>");
	}
	html_str.push("<td  style='background:#fff;'>六</td>");
	html_str.push("</tr>");
	//日历主体
	var tmp;
	for (var i = 0; i < 6; i++) { //填充日期，6行7列
		html_str.push("<tr>");
		for (var j = 0; j < 7; j++) {
			tmp = date[date_index++];
			tmp = tmp ? tmp : "";
			if (tmp == _th.date) {
				html_str.push("<td><div id='c_today' class='c_today' onclick='JCalendar.click(this)'>" + JCalendar.cur_date + "</div></td>");
			}else if (tmp == "") {
				html_str.push("<td></td>");
			}else {
				html_str.push("<td><div onclick='JCalendar.click(this)'>" + tmp + "</div></td>");
			}
			//console.log(tmp,date)
		}
		html_str.push("</tr>");
	}

	html_str.push("</table>");
	html_str.push("<table cellspacing='2' cellpadding='0' width='280'><tr><td colspan='7' style='background:#fff; display:none;'><p title='上一年份' onclick=\"this.style.color='#c00'\" onmouseout=\"this.style.color='#616161'\" onclick=\"JCalendar.update(-12);return false\" style='float:left;color:#616161;margin-right:4px;margin-left:4px;cursor:pointer;'><<上一年份</p><p title='下一年份' onclick=\"JCalendar.update(12);return false\"  onclick=\"this.style.color='#c00'\" onmouseout=\"this.style.color='#616161'\" style='float:right;margin-left:4px;color:#616161;cursor:pointer;'>下一年份>></p></td></tr></table>");
    return html_str.join("");
}

function rili_init(){
	document.getElementById("calendar_contain").innerHTML = new JCalendar().show();/*  |xGv00|106707c554d687c1a77addb2ae941bcc */
	
	var json = rili_json;

	for(var i=0;i<json.list.length;i++){
		if(Oyear == json.list[i].theyear){

			for (var j = 0; j < json.list[i].data.length; j++) {
				
				if(Omouth == json.list[i].data[j].themonth){
					
					for (var k = 0; k < json.list[i].data[j].item.length; k++){
						//活动添加class
						jQuery("#calendar tr td div").each(function(){
							
							var th = jQuery(this).html();
							
							th = th.length == 1 ? "0" + th : th;
							var tt=parseInt(th);
							
							if(th=='08'){
								tt=8;
							}
							if(th=='09'){
								tt=9;
							}
							if(tt>=parseInt(DtaT[2])){
									 if(th == json.list[i].data[j].item[k].thedate){
										if(json.list[i].data[j].item[k].info=="1"){
											jQuery(this).addClass("w-date-relax-icon");
										}
										if(json.list[i].data[j].item[k].info=="2"){
											jQuery(this).addClass("w-date-all-icon");
										}
										if(json.list[i].data[j].item[k].info=="0"){
											jQuery(this).addClass("has");
										}
							//			jQuery(this).addClass("has");
										
										
									}
							}


							
							
							if(new Date(json.showdate).getDate()==th){
								jQuery(this).addClass("current");
							}
						});
					}
					
/*					jQuery("#calendar tr td div").each(function(){
						var object = jQuery(this).attr("class")
						if(!object){
							jQuery(this).addClass("has");
							
						}else if(object.indexOf("w-date-")<0){
							jQuery(this).addClass("has");
						}
					});*/
				}
			}
		}
	}

	//静态方法
	JCalendar.update = function(_month) {
		var date = new Date(JCalendar.cur_year, JCalendar.cur_month - 1 + _month, 1);
		var fday = date.getDay(); //每月第一天的星期数
		var year = date.getFullYear();
		var month = date.getMonth() + 1;

		/*if((parseInt(month)>(parseInt(DtaT[1])+1)) || parseInt(month)<DtaT[1]){
			return;
		}*/
		if( parseInt(year)<parseInt(Oyear) ||( parseInt(month)<parseInt(Omouth) && parseInt(year)==parseInt(Oyear))  ){
			return;
		}
		if(parseInt(year)>parseInt(maxYear) || (parseInt(month)>parseInt(maxMouth) && parseInt(year)==parseInt(maxYear)) ){
			return;
		}
		
		var dayNum = new Date(JCalendar.cur_year, parseInt(JCalendar.cur_month) + _month, 0).getDate(); //每月的天数
		var tds = document.getElementById("calendar").getElementsByTagName("td");
		for (var i = 7; i < tds.length; i++) //清空日历内容
		tds[i].innerHTML = "";
		document.getElementById("calendar_title").innerHTML = year + "年" + (month<10?('0'+month):month) + "月"; //更新显示年月
		//更新当前年月
		JCalendar.cur_year = year;
		JCalendar.cur_month = month;

		//alert(parseInt(month) == Omouth)
		//alert(JCalendar.cur_date)
		for (var j = 1; j <= dayNum; j++) {
			if (j == JCalendar.cur_date && year==DtaT[0] && month==DtaT[1]) {
				if(parseInt(month) == Omouth){
					tds[6 + fday + j].innerHTML = "<div class='c_today' onclick='JCalendar.click(this)'>" + Oday + "</div>";
				}else{
					tds[6 + fday + j].innerHTML = "<div class='' onclick='JCalendar.click(this)'>" + JCalendar.cur_date + "</div>";
				}
			}else {
				tds[6 + fday + j].innerHTML = "<div onclick='JCalendar.click(this)'>" + j + "</div>";
			}
		}

		//获取日期数据状态
		for(var i=0;i<json.list.length;i++){
			if(JCalendar.cur_year == json.list[i].theyear){
				for (var j = 0; j < json.list[i].data.length; j++) {
					if(parseInt(JCalendar.cur_month) == json.list[i].data[j].themonth){
						for (var k = 0; k < json.list[i].data[j].item.length; k++){
							jQuery("#calendar tr td div").each(function(){
								var th = jQuery(this).html();
								
								th = th.length == 1 ? "0" + th : th;
								if(th == json.list[i].data[j].item[k].thedate){
									if(json.list[i].data[j].item[k].info=="1"){//休息
										jQuery(this).addClass("w-date-relax-icon");
									}
									if(json.list[i].data[j].item[k].info=="2"){//已满
										jQuery(this).addClass("w-date-all-icon");
									}
						//			jQuery(this).addClass("has");
									if(json.list[i].data[j].item[k].info=="0"){
										jQuery(this).addClass("has");
									}
									
								}
							
							});
						}
						
/*						jQuery("#calendar tr td div").each(function(){
							var object = jQuery(this).attr("class")
							if(!object){
								jQuery(this).addClass("has");
								
							}else if(object.indexOf("w-date-")<0){
								jQuery(this).addClass("has");
							}
						});*/
					}
				}
			}
		}
		JCalendar.onupdate(year, month, JCalendar.cur_date);
		//----刷新日历的时候,清掉隐藏框里原来选中的日期
		Gid("selected_date").value = "";
		Gid("timespan").value = "";
	}
	JCalendar.onupdate = function(year, month, date) { //日历更改时执行的函数，可以更改为自己需要函数,控件传递过来的参数为当前日期
		//alert(year + "年" + month + "月" + date + "日");
	}

	JCalendar.click = function(obj) {
	//	var tmp = document.getElementById("c_today");

		if(jQuery(obj).hasClass("has")){
			
			jQuery("#calendar div").removeClass("current");
			jQuery(obj).addClass("current");

			
			JCalendar.onclick(JCalendar.cur_year, JCalendar.cur_month, parseInt(obj.innerHTML));
		}
		
		//console.log(JCalendar.cur_date,parseInt(obj.innerHTML))
		//alert(tmp.parentNode.innerHTML)
	}

	JCalendar.onclick = function(year, month, date, _index) {

		if(!_index){
			_index = 1;			
		}
		var selOpt = $("#timespan option");
		selOpt.remove();
		var mo = today.getMonth() + 1;
		
		if (month.toString().length == 1) {
			month = "0" + month.toString();
		}
		if (date.toString().length == 1) {
			date = "0" + date.toString();
		}
		
		for(var i=0;i<json.list.length;i++){
			for (var j = 0; j < json.list[i].data.length; j++) {
				
				if(month == json.list[i].data[j].themonth){
					
					for (var k = 0; k < json.list[i].data[j].item.length; k++){
						if(date == json.list[i].data[j].item[k].thedate){
							var dateTime = json.list[i].data[j].item[k].openTime;
							if(dateTime.length>0){
								var sid = document.getElementById("timespan");
								for(var dateTimeindex=0;dateTimeindex<dateTime.length;dateTimeindex++){
									var value=dateTime[dateTimeindex].fid;
									var text=dateTime[dateTimeindex].fname;
									sid.options[sid.options.length]=new Option(text,value);   // 在select最后添加一项
								}
							}
						}
					}
				}	
			}
			}
		
		var ty = year.toString();
		var tm = month.toString();
		var td = date.toString();
		var url;

		var html = '';        
		
		setCurTime({
			//F: Gid("index_history"),
			Y: ty,
			M: tm,
			D: td
		})
	}	
	
	//初始化未来最近的显示数据
	var showdate = json.showdate.split("-");
	JCalendar.onclick(showdate[0], showdate[1], showdate[2], 1);
}
rili_init();

function setCurTime(a) {
	if (typeof a != "object") return;
	a.M = a.M.toString();
	a.D = a.D.toString();

	if (a.M.length == 1) {
		a.M = "0" + a.M;
	}
	if (a.D.length == 1) {
		a.D = "0" + a.D;
	}
	//var f = a.F;
	//setSelected(f.Year, a.Y);
	//setSelected(f.Month, a.M);
	if (a.D == "NaN") {
		a.D = Oday
	};
	//setSelected(f.Day, a.D);
//	console.log(a.Y + "-" + (a.M.length == 1 ? "0" + a.M : a.M) + "-" + (a.D.length == 1 ? "0" + a.D : a.D))
	Gid("selected_date").value = a.Y + "-" + (a.M.length == 1 ? "0" + a.M : a.M) + "-" + (a.D.length == 1 ? "0" + a.D : a.D);
}

function setSelected(a, b) {
	if (!a || typeof a != "object") return;
	if (!b) return;
	a.value = b;
}
