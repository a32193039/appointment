var isVerification=false;

function postInfo(url ){
	var VCode=$("#VCode").val();
	
	var orderCode=$("#orderCode").val();
	var orderPassword=$("#orderPassword").val();
	
	
//	orderCode = orderCode.toUpperCase();
	
	if(!verificationValue(orderCode)){
		errorPrompt("电子验证码不能为空");
		$("#orderCode").attr("class","w-int w-int-error");
		return;
	}else{
		$("#orderCode").attr("class","w-int");
	}
	if(!verificationValue(orderPassword)){
		errorPrompt("密码不能为空");
		$("#orderPassword").attr("class","w-int w-int-error");
		return;
	}else{
		$("#orderPassword").attr("class","w-int");
	}
	if(!verificationValue(VCode)){
		errorPrompt("验证码不能为空");
		$("#VCode").attr("class","w-int-error");
		return;
	}else{
		$("#VCode").attr("class","w-vcode");
	}
 
	if(!isVerification){
		$.ajax({
			url : url+"/customer/verificationCode.html",
			type : 'post',
			dataType : 'json',
			data : {
				identifyingCode : VCode
			},
			async : false,
			success : function(result) {
				if (result == "1") {
					isVerification=true;
				}else{
					myReload();
				}  
			},
			error : function() {
				errorPrompt("网络异常");
			}
		});
	}
	if(!isVerification){
		errorPrompt("验证码输入有误");
		$("#VCode").attr("class","w-int-error");
		return;
	}else{
		$("#VCode").attr("class","w-vcode");
	}

	var passWord=hex_md5(orderPassword);
	
	$.ajax({
		url : url+"/customer/orderLogin.html",
		type : 'post',
		dataType : 'text',
		data : {
			orderUdid:orderCode,
			orderPasswordHidden:passWord
		},
		async : false,
		success : function(result) {
			if(result==""){
				window.location.href=url+"/customer/toCustomerInfoPage.html";
			}else if(result=="2"){
				window.location.href=url+"/index.html";
			}
			else{
				errorPrompt(result);
				myReload();
			}
		},
		error : function() {
			errorPrompt("网络异常2");
		}
	});
	 
	
}
function verificationValue(val){
	if(val!=""&&val!=null&&val!=undefined){
		return true;
	}
	return false;
}
