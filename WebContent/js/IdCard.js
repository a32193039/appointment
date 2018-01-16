/* 简单身份证验证脚本
 *var ck=new Qhjsw.IDChecks("身份证号码");
 *var tip=ck.IDCk();
 *tip为一个对象(object)总共存在7个属性
 *msg 返回提示信息，无论是否通过验证均有此属性。例如：身份证格式错误、效验位错误
 *pass 返回bool值， 无论是否通过验证均有此属性。值为true代表通过，false代表验证失败
 *idcode 身份证号码,验证通过存在
 *address 地址（只限省份信息）,验证通过存在
 *sextag  性别标识，通过验证存在。1为男，2为女
 *sex     返回性别为中文。男或女
 *birthday 返回出生日期 18位身份证返回字符格式为YYYY-MM-DD 15位返回格式为YY-MM-DD 例如：1991-01-01（18位）、91-01-01（15位号码）
 *
 *
 *顺序类编码，无法确定，奇数为男，偶数为女   
 *校验码，该位数值可通过前17位计算获得  
 * 18位号码加权因子为(从右到左) Wi = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2,1 ]  
 * 验证位 Y = [ 1, 0,'X' , 9, 8, 7, 6, 5, 4, 3, 2 ]   
 * 校验位计算公式：Y_P = mod( ∑(Ai×Wi),11 )   
 */
var Qhjsw = {};
Qhjsw.IDChecks = function(Code) {
	var city = {
		11 : "北京",
		12 : "天津",
		13 : "河北",
		14 : "山西",
		15 : "内蒙古",
		21 : "辽宁",
		22 : "吉林",
		23 : "黑龙江 ",
		31 : "上海",
		32 : "江苏",
		33 : "浙江",
		34 : "安徽",
		35 : "福建",
		36 : "江西",
		37 : "山东",
		41 : "河南",
		42 : "湖北 ",
		43 : "湖南",
		44 : "广东",
		45 : "广西",
		46 : "海南",
		50 : "重庆",
		51 : "四川",
		52 : "贵州",
		53 : "云南",
		54 : "西藏 ",
		61 : "陕西",
		62 : "甘肃",
		63 : "青海",
		64 : "宁夏",
		65 : "新疆",
		71 : "台湾",
		81 : "香港",
		82 : "澳门",
		91 : "国外 "
	};
	var Tip = {}; // 创建一个空对象，此对象用来返回验证结果
	var IDCode = Code;
	var code = []; // 创建一个空数组，用来保存被分割的身份证
	var sextable = [ "女", "男" ]; // 创建数组，保存性别。表驱动
	var Ck = function(IDCode) {
		if (!IDCode || !/(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^\d{6}(18|19|20){1}\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|X|x)$)/i.test(IDCode)) {
			Tip.msg = "身份证号格式错误";
			Tip.pass = false;
		} else if (!city[IDCode.substr(0, 2)]) {
			Tip.msg = "地址编码错误";
			Tip.pass = false;
		} else if (!_CheckBirthday(IDCode)) {
			Tip.msg = "身份证中出生日期不正确";
			Tip.pass = false;
		} else {

			if (18 == IDCode.length) {
				code = IDCode.split('');
				var factor = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8,
						4, 2 ];
				var parity = [ 1, 0, 'X', 9, 8, 7, 6, 5, 4, 3, 2 ];
				var sum = 0;
				var ai = 0;
				var wi = 0;
				if (typeof code[17] == "string") {
					code[17] = code[17].toUpperCase();
				}
				for ( var i = 0; i < 17; i++) {
					ai = code[i];
					wi = factor[i];
					sum += ai * wi;
				}
				if (parity[sum % 11] != code[17]) {
					Tip.msg = "身份证号格式错误";
					Tip.pass = false;
				} else {
					Tip.msg = "该身份证验证正确";
					Tip.pass = true;
					Tip.idcode = IDCode;
					Tip.address = city[IDCode.substr(0, 2)];
					Tip.sextag = _GetSex(IDCode);
					Tip.sex = sextable[Tip.sextag];
					Tip.birthday = _GetBirthday(IDCode);
					Tip.age = _GetAge(Tip.birthday);
					

				}
			} else {
				Tip.msg = "该身份证验证正确";
				Tip.pass = true;
				Tip.idcode = IDCode;
				Tip.address = city[IDCode.substr(0, 2)];
				Tip.sextag = _GetSex(IDCode);
				Tip.sex = sextable[Tip.sextag];
				Tip.birthday = _GetBirthday(IDCode);
				Tip.age = _GetAge(Tip.birthday);
			}
		}
	};
	this.IDCk = function() {
		Ck(IDCode);
		return Tip;
	};
	function _CheckBirthday(IDCodes) {
		if (IDCodes.length == 18) {
			var year = IDCodes.substring(6, 10);
			var month = IDCodes.substring(10, 12);
			var day = IDCodes.substring(12, 14);
			var temp_date = new Date(year, parseFloat(month) - 1,
					parseFloat(day));
			// 这里用getFullYear()获取年份，避免千年虫问题
			if (temp_date.getFullYear() != parseFloat(year)
					|| temp_date.getMonth() != parseFloat(month) - 1
					|| temp_date.getDate() != parseFloat(day)) {
				return false;
			} else {
				return true;
			}
		} else {
			var year = IDCodes.substring(6, 8);
			var month = IDCodes.substring(8, 10);
			var day = IDCodes.substring(10, 12);
			var temp_date = new Date(year, parseFloat(month) - 1,
					parseFloat(day));
			// 对于老身份证中的你年龄则不需考虑千年虫问题而使用getYear()方法
			if (temp_date.getYear() != parseFloat(year)
					|| temp_date.getMonth() != parseFloat(month) - 1
					|| temp_date.getDate() != parseFloat(day)) {
				return false;
			} else {
				return true;
			}
		}
	}
	function _GetBirthday(IDCodes) {
		if (IDCodes.length == 18) {
			var year = IDCodes.substring(6, 10);
			var month = IDCodes.substring(10, 12);
			var day = IDCodes.substring(12, 14);
			return year + "-" + month + "-" + day;
		} else {
			var year = IDCodes.substring(6, 8);
			var month = IDCodes.substring(8, 10);
			var day = IDCodes.substring(10, 12);
			return year + "-" + month + "-" + day;

		}
	}
	function _GetSex(IDCodes) {
		if (IDCodes.length == 18) {
			if (IDCodes.substring(14, 17) % 2 == 0) {
				return 2;
			} else {
				return 1;
			}
		} else {
			if (IDCodes.substring(14, 15) % 2 == 0) {
				return 2;
			} else {
				return 1;
			}
		}
	}
	

	function _GetAge(bdate){
		if(bdate!=""){
			var cd=new Date();
			var age=cd.getFullYear()-parseInt(bdate.substring(0, 4));
			var var_age = 0;
			if(cd.getMonth() >= parseInt(bdate.substring(5, 7))){
				var_age = age;
			}else{
				var_age = age-1;
			}
			return (var_age<0?0:var_age);
		}
	}

};