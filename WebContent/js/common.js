function errorPrompt(msg){
	$("#w-error-popup-white_foot").css("display","block");
	$("#w-confirm-content_foot").html(msg);
}
function noneError(){
	$("#w-error-popup-white_foot").css("display","none");
}


function isNull(arg1)
{
 return !arg1 && arg1!==0 && typeof arg1!=="boolean"?true:false;
}

function readme(msg){
	
	$("#w-error-popup-white_foot_help").css("display","block");
	$("#w-confirm-content_foot_help").html(msg);
}

function closeRead(){
	$("#w-error-popup-white_foot_help").css("display","none");
}