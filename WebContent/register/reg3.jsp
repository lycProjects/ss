<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>南京文交所钱币邮票交易中心</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="description" content="This is my page">
<style type="">
.acc_lt_2 {
    width: 692px;
    height: 37px;
    background: url(jscss/l13.gif) no-repeat;
    display: block;
    margin: 5px 0px 5px 0px;
</style>

</head>

<body onload="load();"><import namespace="MEBS" implementation="https://kh.zgqbyp.com:443/SelfOpenAccount/js/calendar.htc">
<script type="text/javascript" src="jscss/authentication.js"></script>
<script type="text/javascript" src="jscss/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="jscss/FirmManager.js"></script>

<script type="text/javascript"> 

</script>
<link type="text/css" rel="stylesheet" href="jscss/style.css">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->

<script type="text/javascript">

</script>
<script><!-- 
	function ckBrokerId(value){
		if(value!=""){
			FirmManager.getBrokerId(fm.brokerId.value,function(data){
	        	if(data==false){
	        		alert("该会员代码不存在,请重新填写!");
	        	}
	    	})
    	}
	}
     function load()
    {

    	var sum = document.getElementById("sub");
    	sum.disabled =true;
    }
    function change(value){
		var cktrue= document.getElementById("cktrue");
		var btn= document.getElementById("sub");
		btn.disabled=!(value);
	}
    function clicktrue()
    {

    	var sum = document.getElementById("sub");
    	sum.disabled =false;   
    }
    
    function clickfalse()
    {
    	var sum = document.getElementById("sub");
    	sum.disabled =true;
    	
    }
    function goback()
    {

    }
    
    
    function Subm()
    {	
        var now  = new Date();
        now.toLocaleDateString();
      	var sum = document.getElementById("sub");
    	if(ckall()){
    		sum.disabled = true;
    		fm.submit();
    	}
    }  
    
    function checkAccountNum(){
        if(fm.bankAccount.value=="" ){
          document.getElementById("bankMessage").innerHTML="<font color='red' size='-1'>银行卡号码不能为空</font>";
	    	return false;
	    }
    FirmManager.checkAccountNum(fm.bankAccount.value,function(data){
    			if(!data){
    				fm.bankAccount.value="";
	   				document.getElementById("bankMessage").innerHTML="<font color='red' size='-1'>银行卡号已被使用</font>";   				
    			}else{
	    document.getElementById("bankMessage").innerHTML="<span>*</span>请输入您本人名下的银行账号信息，不得使用信用卡。";
	    }
    		})
    }
    
    function checkCardNum(){
    if(fm.cardNumber.value=="" ){

      document.getElementById("cardMessage").innerHTML="<font color='red' size='-1'>证件号码不能为空</font>";
	    	return false;
	    }
    if(fm.cardType.value=="1"){//证件类型为身份证
    	var cardMsg = yanzheng(fm.cardNumber.value);
    	if(cardMsg!="验证通过!"){
    	document.getElementById("cardMessage").innerHTML="<font color='red' size='-1'>身份证号不正确</font>";

	    	return false;
	    }
    
    
    	FirmManager.checkedCardNumberBycardType(fm.cardNumber.value,fm.cardType.value,function(data){
    			if(!data){
    				fm.cardNumber.value="";
	   				document.getElementById("cardMessage").innerHTML="<font color='red' size='-1'>身份证号已被使用</font>";   				
    			}else{

	    document.getElementById("cardMessage").innerHTML="<span>*</span>";

	   // document.getElementById("cardMessage").innerHTML="<span>*</span>请输入您身份证上注明的18位证件号码";
	    }
    		})
    }else{
    	FirmManager.checkedCardNumberBycardType(fm.cardNumber.value,fm.cardType.value,function(data){
				if(!data){
					fm.cardNumber.value="";
	   				document.getElementById("cardMessage").innerHTML="<font color='red' size='-1'>证件号已被使用</font>";   				
				}else{
	    document.getElementById("cardMessage").innerHTML="<span>*</span>";
	    }
			})
    }
    	
  }


//  function checkCardNum2(){
//    if(fm.cardNumber2.value=="" ){
//  document.getElementById("cardMessage2").innerHTML="<font color='red' size='-1'>证件号码不能为空</font>"; 
//	    	return false;
//	    }
//    if(fm.cardNumber.value!=fm.cardNumber2.value){
//    document.getElementById("cardMessage2").innerHTML="<font color='red' size='-1'>两次输入身份证号不一致</font>"; 
//	    	return false;
//	    }else{
//	   document.getElementById("cardMessage2").innerHTML="<font color='red' size='-1'>*</font><font color='black' size='-1'>请再次输入您身份证上注明的18位证件号码</font>";
//	    }
//}
		//根据投资者类型显示相应的信息
		function typeChange(value){
		  var type=value;
		  
		  if(Number(type)==1){
			  	document.getElementById("selfInfo").style.display="none";
			  	document.getElementById("corporationInfo").style.display="block";
		  	}else{
		  		fm.businessLicenseNo.value="";//如果不是法人将营业执照号置为"",防止验证信息时验证该字段
			  	document.getElementById("selfInfo").style.display="block";
			  	document.getElementById("corporationInfo").style.display="none";
		  	}
	 }

	function suffixNamePress(){
		  if (event.keyCode<46 || event.keyCode>57 || event.keyCode == 47){
		    event.returnValue=false;
		  }else{
		    event.returnValue=true;
		  }
	}

    //验证
    function ckall(){ 
	   	if(fm.name.value=="" ){
	    	alert("姓名不能为空");
	    	fm.name.focus();
	    	return false;
	    }
	   	if(fm.registeredPhoneNo.value==""){
			fm.registeredPhoneNo.focus();
			alert("手机号码不能为空！");
			return false;
		}
		if(fm.registeredPhoneNo.value.length!=11){
			fm.registeredPhoneNo.focus();
			alert("手机号码长度只能为11位！");
			return false;
		}
	   	if(fm.cardType.value=="-1" ){
	    	alert("请选择证件类型");
	    	fm.cardType.focus();
	    	return false;
	    }
	    
	    if(fm.cardNumber.value=="" ){
	    	alert("证件号码不能为空");
	    	fm.cardNumber.focus();
	    	return false;
	    }else{
	        if( !/^([a-zA-Z0-9])/.test(fm.cardNumber.value)){
				alert("证件号码由字母或数字组成");
       			fm.cardNumber.focus();
	    		return false;
    	    }
		    if(fm.cardType.value=="1"){
		    	var d = new Date();
				nowyear = d.getFullYear();
				var birthyear = fm.cardNumber.value.substr(6,4);
				var age = nowyear-birthyear;
				if(age<18){
					alert("开户交易商年龄应大于18周岁");
					fm.cardNumber.focus();
					return false;
				}
		    }
		    if(fm.cardType.value=="3"&&checkhuzhao(fm.cardNumber.value)==false){
				alert("护照格式填写错误");
				return
			}
			
	    }	  
	      
	    if(fm.selectp.value=="0" ){
	    	alert("请选择所在省市");
	    	fm.address1.focus();
	    	return false;
	    }

	    if(fm.cardType.value=="1"){
	    	if(yanzheng(fm.cardNumber.value)!="验证通过!"){
		    	alert(yanzheng(fm.cardNumber.value));
		    	fm.cardNumber.focus();
		    	return false;
		    }
	    }
	     if(fm.postCode.value!="" ){
	    	var reg =/^[0-9]+$/g;
		    if(!reg.test(fm.postCode.value)){
				alert("邮编必须是数字");
	    	    fm.postCode.focus();
			    return false;
		    }
         }











	    var result = fm.email.value.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/); 
		//判断邮箱格式
		if(fm.email.value!=""&&result==null){
			alert("电子邮箱格式不正确");
			fm.email.focus();
			return false;
		}
	    if(fm.recommendBankCode.value=="" ){
	   // if(fm.recommendBankCode1.value=="" ){
	    	alert("银行不能为空");
	    	fm.bank.focus();
	    	return false;
	  //  }
	    }
	    if(fm.bankAccount.value=="" ){
	    	alert("银行账号不能为空");
	    	fm.bankAccount.focus();
	    	return false;
	    }else{
	       var reg =/^[0-9]+$/g;
           var bankaccount = fm.bankAccount.value.replace(/\s+/g,"");
		   if(!reg.test(bankaccount)){
				alert("银行账号必须是数字");
				fm.bankAccount.focus();
			    return false;
		    }
	    }
	    if(fm.address.value=="" ){
	    	alert("地址不能为空");
	    	fm.address.focus();
	    	return false;
	    }
	    if(fm.address1.value=="" ){
	    	alert("地址不能为空");
	    	fm.address1.focus();
	    	return false;
	    }
	    var type='';
	    var numbers=document.getElementsByName("type");
		for ( var i = 0; i < numbers.length; i++) {
			if (numbers[i].checked){
				type=numbers[i].value;
			}
		}
	    if(type=="1"&&fm.businessLicenseNo.value==""){
			alert("营业执照号不能为空");
			return;
		}
	    if(type=="1"&&fm.organizationCode.value=="") {
    		alert("组织机构代码不能为空！");
    		return;
	    }
	    
		//2014-03-07 by chenyc 不再显示开户机构所在地区
	    // if(fm.areaChoose.value=="-1"){
	    //	alert("请开户机构所在地区");
	    //	fm.areaChoose.focus();
	    //	return false;
	   // }
	    if(fm.brokerId.value=="-1"){
	    	alert("请选择经纪会员");
	    	fm.brokerId.focus();
	    	return false;
	    } 
	    
	    
		if(type=="3"){
	    	if(fm.contactMan.value=="" ){
		    	alert("联系人不能为空");
		    	fm.contactMan.focus();
		    	return false;
		    }  
		    if(fm.ContacterPhoneNo.value=="" ){
		    	alert("手机号码不能为空");
		    	fm.ContacterPhoneNo.focus();
		    	return false;
		    }else{
		       var reg =/^[0-9]+$/g;
           	   var contacterPhoneNo = fm.ContacterPhoneNo.value;
		   	   if(!reg.test(contacterPhoneNo)){
				alert("手机号码必须是数字");
				fm.ContacterPhoneNo.focus();
			    return false;
		        }
		    }
		    
			//2014-03-13 add by chenyc 判断图片是否为空
				var attach = document.getElementById("attach").value;
				var imgSize = 1024 * 100; //最大100K
				if(attach!=null&&attach!=""){
					var ext = attach.substr(attach.lastIndexOf(".")+1,attach.length);
					//alert("ext:"+ext);
					if(ext==""||ext == "jpg"||ext == "gif"||ext == "png"||ext == "bmp"||ext == "JPG"||ext == "GIF"||ext == "PNG"||ext == "BMP"){
					}else{
						alert("格式不正确!");
						return false;
					}
				}else{
					alert("请选择上传图片");
					return false;
				}
	    }
	    //if(fm.yanzhengma.value=="" ){
	    //	alert("验证码不能为空");
	    //	fm.yanzhengma.focus();
	    //	return false;
	    //}
	    return true;  
    }
//验证护照
    function checkhuzhao(number){
		var str=number;
		var Expression=/^(P\d{7})|(G\d{8})$/; 
		var objExp=new RegExp(Expression);
		if(objExp.test(str)==true){
			return true;
		}
		else{
			return false;		
		}
	}
    //仅输入6位数字
    function onlyNumberInput1()
	{
	  if (event.keyCode<45 || event.keyCode>57 || event.keyCode == 47 || event.keyCode == 46)
	  {
	    event.returnValue=false;
	  }
	  
	  var pwd1=document.getElementById("firmId").value;
	  
	  if(pwd1.length>=6){

	    event.returnValue=false;
	    }
	    
	}
	
	//银行卡输入4位加一空格
	 function divideAccount(){
     var tt = document.getElementById("bankAccount");
      tt.value =tt.value.replace(/\s/g,'').replace(/(\d{4})(?=\d)/g,"$1 ");

    }
    
    //仅输入数字
    function onlyNumberInput()
	{
	  if (event.keyCode<45 || event.keyCode>57 || event.keyCode == 47 || event.keyCode == 46)
	  {
	    event.returnValue=false;
	  }
	}
	//仅输入数字和.
	function onlyNumberAndOInput()
	{
	  if (event.keyCode<45 || event.keyCode>57|| event.keyCode == 47)
	  {
	    event.returnValue=false;
	  }
	}
	//仅输入数字和字母
	function onlyNumberAndCharInput()
	{
	  if ((event.keyCode>=48 && event.keyCode<=57) || (event.keyCode>=65 && event.keyCode<=90) || (event.keyCode>=97 && event.keyCode<=122))
	  {
	    event.returnValue=true;
	  }
	  else
	  {
	    event.returnValue=false;
	  }
	}
	
	//验证时间格式
	function isDateFormat(txt){ //是否为合法的日期格式:YYYY-MM-DD
		if(txt==null || txt == "" || txt.length > 10)
		{
			return false;
		}
		else{
			var regex = /[0-9]{1,4}-[0-9]{1,2}-[0-9]{1,2}/;
			if( regex.test(txt) ){
				var noArr = txt.split("-");
				var year = noArr[0];
				var month = noArr[1];
				var day = noArr[2];
				if ( year < 1 || month < 1 || month > 12 || day < 1 || day > 31)
				{
					return false;
				}
				if ((month == 4 || month == 6 || month == 9 || month == 11) && day > 30)
				{
					return false;
				}
				if (month == 2){
					if ((year % 4 != 0) && day > 29)
					{ 
						return false;
					}
					if (year % 4 == 0){
						if(year % 100 == 0 && year % 400 != 0 && day > 29)
						{
							return false;
						}
						else if (day > 28)
						{
							return false;
						}
					}
				}
				return true;
			}else
			{
				return false;
			}
		}
	}
	
	function clearvalue(){
	
		//fm.birthday.value="";
	}
	function setRq()
	{
	  //fm.birthday.value = pTop("./calendar.htm",222,252);  
	}
	
	function pTop(location, width, height)
	{
		return showModalDialog(location,window,'dialogWidth:'+width+'px;dialogHeight:'+height+'px;dialogLeft:'+(screen.width-width)/2+'px;dialogTop:'+(screen.height-height)/2+'px;center:yes;help:no;resizable:no;status:no;scrollbars:no');
	}
	function changeImg(){
		document.getElementById("img").src="./image.jsp?"+Math.random();
	}
	function searchBroker(){
		var returnValue=openDialog("searchBroker.jsp","_blank",300,350);
		if(returnValue==null){
			fm.brokerId.value="";
		}else{
			fm.brokerId.value=returnValue;
		}
		fm.brokerId.focus();
	}
	function openDialog(url, args, width, height) {
		if (!width) width = 600;
		if (!height) height = 400;
	    var returnVal = window.showModalDialog(url, args, "dialogWidth=" + width + "px; dialogHeight=" + height + "px; status=yes;scroll=yes;help=no;");
		return returnVal;
	}
	
	function changeBank(value){
	
//	var bank = document.getElementById("recommendBankCode");
//	var text=bank.options[bank.selectedIndex].text;
//	var bvalue = bank.value;
	
//	var oSelect = document.getElementById("brokerId");
//		while (oSelect.options.length>0){

//		 for(var i=0;i<oSelect.options.length;i++){
//		    if("301"==oSelect.options[i].value){
//		    oSelect.options[i].outerHTML = null;
//		    i--;
//		    continue;		    	
//		    }
//		    if("302"==oSelect.options[i].value){
//		    oSelect.options[i].outerHTML = null;		 
//		    i--;   		
//		    }
//		 }
//		 break;
//		}

//   if(bvalue!=""&&bvalue!=null){
//	var oOption = document.createElement("option");
//	var t = document.createTextNode(bvalue+text);
//	oOption.setAttribute("value",bvalue);
//	oOption.appendChild(t);				
//   oSelect.appendChild(oOption);
//    }
    
   /* 不显示密码查询 if(value=="301"){
    document.getElementById("passwordArea1").style.display="";
    document.getElementById("passwordArea2").style.display="";
    }else{
    document.getElementById("passwordArea1").style.display="none";
    document.getElementById("passwordArea2").style.display="none";
    }
     */
	}
	
		function showArea(){
		var i = 0;
		var oSelect = document.getElementById("areaChoose");
		var oOption = document.createElement("option");
		var t = document.createTextNode('--请选择--');
		        oOption.setAttribute("value", "-1");
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
				submitNext("-1");
		
			
           		var oOption = document.createElement("option");
				
           		t = document.createTextNode('上海');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '0');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		t = document.createTextNode('北京');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '1');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		t = document.createTextNode('天津');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '2');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		t = document.createTextNode('重庆');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '3');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		t = document.createTextNode('河北');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '4');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		t = document.createTextNode('河南');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '5');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('云南');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '6');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('辽宁');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '7');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('黑龙江');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '8');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('湖南');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '9');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('安徽');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '10');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('山东');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '11');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('新疆');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '12');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('江苏');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '13');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('浙江');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '14');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('江西');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '15');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('湖北');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '16');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('广西');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '17');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('甘肃');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '18');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('山西');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '19');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('内蒙');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '20');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('陕西');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '21');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('吉林');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '22');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('福建');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '23');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('贵州');
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '24');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('广东');
           		
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '25');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('青海');
           		
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '26');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('西藏');
           		
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '27');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('四川');
           		
           		
           		
           		
           		
           		oOption.setAttribute("value", '28');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('宁夏');
           		
           		
           		
           		
           		oOption.setAttribute("value", '29');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('海南');
           		
           		
           		
           		oOption.setAttribute("value", '30');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('香港');
           		
           		oOption.setAttribute("value", '32');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
           		var oOption = document.createElement("option");
				
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		t = document.createTextNode('澳门');
           		oOption.setAttribute("value", '33');
				oOption.appendChild(t);
				oSelect.appendChild(oOption);
           		i = i + 1;
        	
        
        setTimeout(function(){ oSelect.options[0].selected=true; }, 1);         
        submitNext(oSelect.value);
	}
	
	function submitNext(area){
		var oSelect = document.getElementById("brokerId");
		while(oSelect.options.length > 0)
		{
		  oSelect.options[0].outerHTML = null;
		}
		
//	   var bank = document.getElementById("recommendBankCode");
//	   var text=bank.options[bank.selectedIndex].text;
//	   var bvalue = bank.value;
//		if(bvalue!=""&&bvalue!=null){
//	    var oOption = document.createElement("option");
//	    var t = document.createTextNode(bvalue+text);
//	    oOption.setAttribute("value",bvalue);
//	    oOption.appendChild(t);				
//       oSelect.appendChild(oOption);
//       }

        if(area=="-1"){
        var oOption = document.createElement("option");
        var t = document.createTextNode("--请先选择地区--");
		oOption.setAttribute("value", "-1");
		oOption.appendChild(t);
		oSelect.appendChild(oOption);
         }else{ 
        var oOption = document.createElement("option");
        var t = document.createTextNode("--请选择所属经纪会员--");
		oOption.setAttribute("value", "-1");
		oOption.appendChild(t);
		oSelect.appendChild(oOption);
		FirmManager.getBrokerListByIdAndNameAndmem(area,function(data){
			if(data.length>0){
				var arr=data.split(";");
				for(var i=0;i<arr.length;i++){
	    			var oOption = document.createElement("option");
	    			var arr2=arr[i].split(",");
					var t = document.createTextNode(arr2[0]+arr2[1]);
					oOption.setAttribute("value", arr2[0]);
					oOption.appendChild(t);
					oSelect.appendChild(oOption);
				}
			}
				
		})
		}
	}

	function checkFirm(){
		var firmId = document.getElementById("firmId").value;
		var brokerId = document.getElementById("brokerId").value;
		var id = brokerId+firmId;
		if(firmId.length!=6){
			document.getElementById("firmMessage").innerHTML="<font color='red' size='-1'>请输入6位交易商ID</font>";
			fm.firmId.focus();
		}else{
			FirmManager.checkedFirmById(id,function(data){
				if(data=="true"){
					document.getElementById("firmMessage").innerHTML="<font color='red' size='-1'>该交易商ID已存在</font>";
					fm.firmId.focus();
				}else{
					document.getElementById("firmMessage").innerHTML="<font color='red' size='-1'>*</font>";
				}
			})
			
		}
	}
	
	function checkRecomandMan(val){
		var firmId = val;
		if(firmId == null || firmId == ""){
		}else{
		FirmManager.checkedFirmById(firmId,function(data){
			if(data=="true"){
				document.getElementById("recomandManMessage").innerHTML="<font color='red' size='-1'></font>";
			}else{
				document.getElementById("recomandManMessage").innerHTML="<font color='red' size='-1'>该交易商不存在</font>";
			}
		})
			
		}
	}

	function chksize(filePath)
	{




























			return true;
}
	function sleep(n)
	  {
	    var start=new Date().getTime();
	    while(true) if(new Date().getTime()-start>n) break;
	  }

	function getVerifyCode()
    {
        if(fm.registeredPhoneNo.value==""){
            fm.registeredPhoneNo.focus();
            alert("手机号码不能为空！");
            return false;
        }
        if(fm.registeredPhoneNo.value.length!=11){
            fm.registeredPhoneNo.focus();
            alert("手机号码长度只能为11位！");
            return false;
        }
        if(fm.checkNum.value==""){
            fm.checkNum.focus();
            alert("验证码不能为空！");
            return false;
        }
        fm.getCode.disabled=true;              
        fm.verifyCode.disabled=false;
        
       
        var registeredPhoneNo = document.getElementById("registeredPhoneNo").value;
        var checkNum = document.getElementById("checkNum").value;
        var url = "${pageContext.request.contextPath }/phonecode";
        var args = {
                "phone":registeredPhoneNo
      };

        $.post(url,args,function(data){
        	alert("已发送");
       });

       
        
        
 
         
    } 

	function changeregistimg(id) {
	    document.getElementById("verifycode1").src = "https://kh.zgqbyp.com:443/SelfOpenAccount/firmController.fir?funcflg=getPic&"+ Math.random();
	}
	var a=1;
	function countDown(secs){
	    fm.getCode.disabled=true; 
	    if(a<0){
             a=1;
             return false;
        }
        document.getElementById("getCode").value=secs+"秒后可重发";
        if(--secs>0){
            setTimeout("countDown("+secs+" )",1000);
        }else{
            document.getElementById("getCode").value="获取验证码";
            document.getElementById("getCode").disabled=false;  
        }
	}
--></script>



 <div class="acc_main">

          <h3 class="acc_tit">开户流程</h3>
          <div class="acc_lt acc_lt_2" style="background: url(jscss/l13.gif) no-repeat;"></div>
       <p class="acc_style6">郑重提示：客户须仔细填写本表格，各项信息会与客户在结算银行开户的信息进行校验，如填写错误，可能导致客户开户失效！</p>
	<form action="${pageContext.request.contextPath }/register" method="post" name="fm" id="fm" enctype="multipart/form-data">

              <h3 class="acc_tit">温馨提示</h3>
                <p class="acc_style2">
             1.请您不要在网吧等公共场所使用网上开户系统。 <br>
             2.标有*的项目为必填项。完整且正确填写申请资料是成功办理开户申请的前提条件。填写完整后，请您再检查一下填写信息是否正确。<br>
             3.建议您使用IE浏览器提交开户申请，避免出现提交失败等情况的发生。<br>
             4.我们会审核您所提交的个人身份信息，如信息存在问题，我们会限制您所提交的开户申请。<br>
             5.为便于投资者后续服务工作，建议您在开户过程中选择居住所在地附近的授权服务机构。<br>
             6.如您存有疑问，请拨打025-84569988进行咨询。<br>
             </p>

           <table class="accbg" width="692" cellspacing="0" cellpadding="0" border="0">
	    		<tbody><tr>
	    			<td colspan="2" class="accbg1">客户开户申请表</td>
	    		</tr>
	    		<tr>
	    			<td align="right">姓名:</td><td colspan="3"><input name="name" id="name" maxlength="16"><span>*</span>请输入您的真实姓名</td>
	    		</tr>
	    		<tr>
	    			<td align="right">手机号码:</td><td colspan="3"><input name="registeredPhoneNo" id="registeredPhoneNo" maxlength="16"><span>*</span></td>
	    		</tr>
	    		 <tr>
			      <td align="right">验证码:</td>
			      <td width="250"><input id="checkNum" name="checkNum" type="text">
			          <img id="verifycode1" onclick="changeregistimg(id); return false;" src="https://kh.zgqbyp.com/SelfOpenAccount/firmController.fir?funcflg=getPic" title="点击更换验证码"></td>
			          
			          <td>  <input id="getCode" class="btn" onclick="getVerifyCode();" name="getCode" value="获取验证码" style="background:url(jscss/btn3.png); no-repeat;font-size:12px; line-height:24px; width:82px; height:24px; text-align:center; color:#fff; border:0; cursor:hand;" type="button"></td>
			          <td><span id="message" style="color:#ff0000;">*请输入验证码后获取短信验证码</span></td>
			          </tr>
			  <tr> 
			   <td align="right">手机验证码:</td>
			     <td colspan="3"><input id="verifyCode" name="verifyCode" style="width:100px;" type="text"><span style="color:#ff0000;">*输入接收到的短信验证码申请开户</span></td>
                </tr>
	    		<tr>
	    			<td align="right">传真:</td><td colspan="3"><input name="fax" id="fax" maxlength="16"></td>
	    		</tr>
	    		<tr>
	    			<td align="right"> 证件类型 :</td>
                <td>
                	<select id="cardType" name="cardType">
                	<option value="-1" selected="selected">---请选择证件类型--</option>
                	<option value="1">身份证</option>
                	<option value="2">军官证</option>
                	<option value="3">护照</option>
                	<option value="4">台胞证</option>
                	<option value="5">香港居民身份证</option>
                	<option value="6">港澳通行证</option>
					<option value="C">回乡证</option>
                	</select><span>*</span>
                </td>
                </tr>
                <tr>
            	<td align="right"> 证件号码:</td>
                <td colspan="3">
                	<input name="cardNumber" id="cardNumber" maxlength="18" onkeypress="onlyNumberAndCharInput();" onblur="checkCardNum();"><font id="cardMessage"><span>*</span></font>
                </td>
              </tr>    		
	    		<tr><td align="right">电子邮箱:</td><td colspan="3"><input name="email" id="email" maxlength="40">请填写真实的邮箱，以便接收成开户成功确认信息和交易所有关信息提示。</td></tr>
	    		
	    		<tr><td colspan="4">	    		
	    	    <div id="bankArea1" style="display:none">
	    		<table>
	    		<tbody><tr>
	    			<td align="right">开户银行:</td><td colspan="3"><input name="recommendBankCode1" id="recommendBankCode1" value="南京顺凡文化传播有限公司" readonly="readonly"><span>*</span>
	    		</td></tr>
	    		</tbody></table></div>    		
	    		</td></tr>
	    		
	    		
	    		<tr id="bankArea2">
	    			<td align="right">开户银行:</td>
	    			<td>
	    			<select name="recommendBankCode" id="recommendBankCode" onclick="changeBank(this.value)">
	    			<option value="" selected="selected">---请选择银行--</option>
					
		               
		                	<option value="10">工行</option>
		                
		             
		               
		                	<option value="18">平安银行</option>
		                
		             
		               
		             
		               
		                	<option value="25">民生</option>
		                
		             
		               
		                	<option value="14">交行</option>
		                
		             
		               
		                	<option value="21">光大银行</option>
		                
		             
		               
		             
		               
		                	<option value="43">上海银行</option>
		                
		             
	    			</select><span>*</span>
	    			</td>
    			</tr>
    			
	    		
	    		
    			<tr>
	    			<td align="right">银行账号:</td>
	    			<td colspan="3">
	    			<input name="bankAccount" id="bankAccount" onkeypress="onlyNumberInput();" onkeyup="divideAccount();" onblur="checkAccountNum();">
	    			<font id="bankMessage"><span>*</span>请输入您本人名下的银行账号信息，不得使用信用卡。</font>
	    			</td>
	    		</tr>
	    		
	    		<!--不显示银行卡密码查询 <tr><td align="right"><div id="passwordArea1" style="display:none">银行卡查询密码:</div></td><td colspan="3">
	    		<div id="passwordArea2" style="display:none">
    			<input type="password" id="bankPassword" name="bankPassword" size="10" onKeyPress="onlyNumberInput1()" maxlength="6"/><span>*</span>请输入密码  				
                 </div>
    		     </td></tr> -->
    		     <tr>
	    			<td align="right">邮政编码:</td>
	    			<td colspan="3"><input name="postCode" id="postCode" onkeypress="onlyNumberInput()">请填写地址信息所对应的邮政编码信息</td>
	    		</tr>
	    		<tr>
	    			<td align="right">联系地址:</td><td colspan="3">
                     <select name="selectp" id="selectp">
                     <option selected="selected" value="0">--请选择--</option>
                     <option value="北京市">北京</option>
                     <option value="上海市">上海</option>
                     <option value="重庆市">重庆</option>
                     <option value="天津市">天津</option>
                     <option value="河北省">河北</option>
                     <option value="山东省">山东</option>
                     <option value="辽宁省">辽宁</option>
                     <option value="黑龙江省">黑龙江</option>
                     <option value="吉林省">吉林</option>
                     <option value="甘肃省">甘肃</option>
                     <option value="青海省">青海</option>
                     <option value="河南省">河南</option>
                     <option value="江苏省">江苏</option>
                     <option value="湖北省">湖北</option>
                     <option value="湖南省">湖南</option>
                     <option value="江西省">江西</option>
                     <option value="浙江省">浙江</option>
                     <option value="广东省">广东</option>
                     <option value="云南省">云南</option>
                     <option value="福建省">福建</option>
                     <option value="台湾省">台湾</option>
                     <option value="海南省">海南</option>
                     <option value="山西省">山西</option>
                     <option value="四川省">四川</option>
                     <option value="陕西省">陕西</option>
                     <option value="贵州省">贵州</option>
                     <option value="安徽省">安徽</option>
                     <option value="台湾省">台湾</option>
                     <option value="广西壮族自治区">广西</option>
                     <option value="内蒙古自治区">内蒙古</option>
                     <option value="西藏自治区">西藏</option>
                     <option value="新疆维吾尔自治区">新疆</option>
                     <option value="宁夏回族自治区">宁夏</option>
                     <option value="澳门">澳门</option>
                     <option value="香港">香港</option>
                     </select>
                        省/直辖市:
                     <input name="address1" id="address1" style="width:80px;">
                     市/区/县:<input name="address" id="address" style="width:190px;"><span>*</span>街/小区/楼/门/室等</td>
	    		</tr>
	    		<tr id="brokerArea1" style="display:none">
	    			<td align="right">开户机构:</td>
	    			<td>
	    			<input name="brokerId1" id="brokerId1" disabled="disabled">
	    			<input name="brokerId1" id="brokerId1" value="" type="hidden">
	    		</td>
	    		</tr> 
	    		<!-- 2014-03-07 by chenyc 不显示开户机构所在地区 -->
	    		<!--
	    		<tr id="brokerArea2">	
	    		<td align ="right">开户机构所在地区:</td>
	    		<td colspan="3">
	    		<select name="areaChoose" id="areaChoose" onchange="javascript:submitNext(document.getElementById('areaChoose').value)">
	    		</select><span>*</span>请选择您所在的地区
	    		</td></tr>
	    		-->
	    		<tr>
	    			<td align="right">开户机构:</td>
	    			<td colspan="3">
	    			<select name="brokerId" id="brokerId">
	    			<!-- <option selected value="0">--请先选择地区--</option> -->
	    			
	    				
	    				
	    				<option selected="selected" value="1046">1046南京顺凡文化传播有限公司</option>
	    				
	    			
	    			</select>
	    			<span>*</span>选择您希望办理开户业务的经纪会员
	    			</td>
	    		</tr>
               <!--  </table></div> -->
               <!--  </td></tr> -->
               <tr>
               		<td align="right">投资者类型:</td>
               		<td><input name="type" id="type" value="3" checked="checked" onclick="typeChange(this.value)" type="radio">自然人投资者
               			<input name="type" id="type" value="1" onclick="typeChange(this.value)" type="radio">机构投资者
               		</td>
               </tr>
               
            
			  
			  </tbody></table><table class="accbg" id="selfInfo" width="692" cellspacing="0" cellpadding="0" border="0">
			  <tbody><tr>
            	<td width="104" align="right"> 性别 :</td>
                <td>
                	<select id="sex" name="sex" class="text" style="width: 150px">
                	<option value="1" selected="selected">男</option>
					<option value="0">女</option>
		    		</select>
                </td>
            	
              </tr>
              <tr>
                <td align="right"> 推荐人账号 :</td>
                <td>
                	<input name="recomandMan" class="text" style="width: 150px;" onblur="checkRecomandMan(this.value);" type="text">
                	<font id="recomandManMessage">请输入推荐交易商账号</font>
                </td>
              </tr>
              <tr>
              <td align="right"> 是否参加活动 :</td>
             <td>
                	<select id="sex" name="isactivity" class="text" style="width: 150px">
	                	<option value="0" selected="selected">否</option>
	                	<option value="1">是</option>
		    		</select>
                </td> 
   			  </tr>		 
              <tr>
            	<td align="right"> 紧急联系人 :</td>
                <td>
                	<input name="contactMan" class="text" style="width: 150px;" type="text"><span>*</span>
                </td>
            	<td align="right"> 手机号码 :</td>
                <td>
                	<input name="ContacterPhoneNo" class="text" style="width: 150px;ime-mode:disabled;" onkeypress="return suffixNamePress();" type="text"><span>*</span>
                </td>
               </tr>
               <tr>
                <td align="right"> 照片 :</td>
                <td colspan="3">
				<input id="attach" name="attach" value="" onchange="chksize(this.value)" type="file">
				<font id="codeMessage"><span>*</span>请上传清晰的身份证原件正面照片供审核。</font></td>
              </tr>
			  <tr>
                <td align="right"></td>
                <td colspan="3">
				<font id="codeMessage">(图片不大于250K)</font></td>
              </tr>

              </tbody></table>
			 
          
              
            	  
			   
			  <table class="accbg" id="corporationInfo" style="display: none" width="100%" cellspacing="0" cellpadding="0" border="0">       
              <tbody><tr>
            	<td width="104" align="right"> 营业执照号 :</td>
                <td>
                	<input name="businessLicenseNo" class="text" style="width: 150px;ime-mode:disabled;" onkeypress="return suffixNamePress();" type="text"><span>*</span>
                </td>
            	<td align="right"> 注册资金 :</td>
                <td>
                	<input name="registeredCapital" class="text" style="width: 150px;ime-mode:disabled;" onkeypress="return suffixNamePress();" type="text">
                </td>
              </tr>
              <tr>
            	<td align="right"> 税务登记号 :</td>
                <td>
                	<input name="taxRegistrationNo" class="text" style="width: 150px;ime-mode:disabled;" onkeypress="return suffixNamePress();" type="text">
                </td>
            	<td align="right"> 组织机构代码 :</td>
                <td>
                	<input name="organizationCode" class="text" style="width: 150px;ime-mode:disabled;" type="text"><span>*</span>
                </td>
              </tr>             
             <tr>
            	<td align="right"> 法定代表人 :</td>
                <td>
                	<input name="legalRepresentative" class="text" style="width: 150px;" type="text">
                </td>
            	<td align="right"> 手机号码 :</td>
                <td>
                	<input name="LRphoneNo" class="text" style="width: 150px;ime-mode:disabled;" onkeypress="return suffixNamePress();" type="text">
                </td>
              </tr>           
              <tr>
            	<td align="right"> 业务联系人 :</td>
                <td>
                	<input name="businessContacter" class="text" style="width: 150px;ime-mode:disabled;" type="text">
                </td>
            	<td align="right"> 企业性质 :</td>
                <td>
                	<input name="enterpriseKind" class="text" style="width: 150px;" type="text">
                </td>
              </tr>
              </tbody></table>
           
               
	    		<div class="acc_kj">
	    		<!--StartFragment-->
				<div class="Section1" style="layout-grid:15.6pt">

<p class="MsoNormal" style="text-align:center;line-height:18.0pt;
mso-line-height-rule:exactly" align="center"><span style="mso-bidi-font-size:10.5pt;
font-family:华文中宋">钱币邮票交易风险提示书<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="line-height:18.0pt;mso-line-height-rule:exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="line-height:18.0pt;mso-line-height-rule:exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">尊敬的投资人：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">欢迎您参加钱币邮票实物交易！为了让您充分了解交易风险，根据《钱币邮票线上交易规则》<span lang="EN-US">(</span>暂行<span lang="EN-US">)</span>等相关规定，特提供本风险提示书。若您选择参与本所钱币邮票实物交易，则视为您已仔细阅读前述规定以及本风险提示书并自愿承担钱币邮票实物交易带来的风险。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">鉴于投资人进行钱币邮票交易存在风险并可能导致投资人亏损，请您慎重考虑自身情况是否适合进行此类交易，并确定可以自行承担风险及亏损，同时客观理性地认识到钱币邮票交易的风险包括但不限于：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">一、宏观经济风险：由于我国宏观经济形势的变化以及钱币邮票艺术品价值取向的变化，存在可能影响钱币邮票价格上下波动的情形；国际宏观经济形势变化也会对钱币邮票交易市场产生影响，存在导致钱币邮票交易价格上下波动的情形。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">二、政策法规
及市场风险：钱币邮票交易作为一种创新的实物交易模式，自身的交易规则还需要在实践中不断完善，国家法律、法规及政策的变化以及影响价格波动的其他因素出
现，都可能影响钱币邮票交易价格；或者由于本所根据国家法律、法规及政策变化等原因而对本所相关规则进行修订，可能影响交易主体资格、交易规则等各个方面
的变化。上述法律法规、政策及本所规则的风险，均可能导致本所交易的钱币邮票价格异常波动。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">三、鉴定评估风险：由于国内目前尚没有权威的鉴定评估机构和统一的鉴定估值程序及完备的鉴定估值方法，钱币邮票鉴定估值意见书仅供投资者参考，不作为投资人主张其他权益的依据。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">四、技术风
险：由于交易的进行、信息的显示及资金的划付均是运用电子通讯技术和电脑技术并通过互联网传输来实现的，这些技术存在被网络黑客和计算机病毒攻击的可能，
或者通讯技术、电脑技术和相关软件具有存在缺陷的可能，互联网传输故障也可能造成您的交易指令无法及时传输，这些风险均可导致您的交易申报无法成交或者无
法全部成交，或者转账资金不能及时到账、交易延迟、中止甚至无法完成交易等。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">五、不可抗力
风险：诸如地震、台风、火灾、水灾、战争、瘟疫、社会动乱等不可抗力因素可能导致钱币邮票交易系统的瘫痪；本所无法控制和不可预测的系统故障、设备故障、
通讯故障、电力故障等也可能导致钱币邮票交易系统非正常运行甚至瘫痪；银行无法控制和不可预测的系统故障、设备故障、通讯故障、电力故障等也可能导致资金
转账系统非正常运行甚至瘫痪，这些风险可能导致您的交易申报无法成交或者无法全部成交，或者转账资金不能及时到账等。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">六、账号密码泄露风险：由于投资人会员使用计算机被病毒侵入、黑客攻击等导致的密码泄露、账号泄露或投资人的身份被冒用，可能导致无法正确下达申报指令、恶意虚假申报或申报失败、延迟、错误等。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">七、投资人会员软硬件系统风险：投资人的电脑设备及软件系统与所提供的网上交易系统不相匹配，导致无法下达申报指令或申报失败、延迟等。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">八、其他风险：密码失密、操作不当、投资决策失误的等原因可能会使投资人会员发生亏损；网上申报、热键操作完毕后未及时退出，他人进行恶意操作而造成的损失；网上交易未及时退出还可能导致遭遇黑客攻击，从而造成损失。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">上述风险都将可能会导致投资人发生亏损，该等亏损均由投资人自行承担。在投资人参与钱币邮票交易时，他人给予的保证获利或不会发生亏损的任何承诺都是没有根据的，类似的承诺不会减少发生亏损的可能。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="line-height:18.0pt;mso-line-height-rule:exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">本《风险提示
书》提示事项仅为列举，并不能详细列明从事钱币邮票交易的全部风险和可能影响钱币邮票市场异常波动的所有情形，其他不可预见的风险因素也可能会给投资人带
来损失。投资人在进行钱币邮票交易前，应确保自己已经做好足够的风险评估和财务安排，避免因参与交易而遭受难以承受的损失。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">特别提示：本所敬告投资人，应当根据自身的经济条件和心理承受能力认真制定交易策略，尤其是投资人决定购买有较大潜在风险的品种时，更应当清醒地认识到该类实物藏品蕴含的风险。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">钱币邮票网上实物交易是一种创新的交易模式。投资人在进行交易时存在盈利的可能，也存在亏损的风险。在投资人参与钱币邮票实物交易时，我们郑重地提醒投资人，认真阅读并谨记以下劝导：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:39.75pt;text-indent:-18.0pt;line-height:
18.0pt;mso-line-height-rule:exactly;mso-list:l0 level1 lfo1;tab-stops:list 39.75pt"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋;mso-bidi-font-family:
华文中宋" lang="EN-US"><span style="mso-list:Ignore">1、<span style="font:7.0pt &quot;Times New Roman&quot;">
</span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.5pt;
font-family:华文中宋">请合理配置个人资产，不要以个人全部资产投入钱币邮票交易市场。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:39.75pt;text-indent:-18.0pt;line-height:
18.0pt;mso-line-height-rule:exactly;mso-list:l0 level1 lfo1;tab-stops:list 39.75pt"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋;mso-bidi-font-family:
华文中宋" lang="EN-US"><span style="mso-list:Ignore">2、<span style="font:7.0pt &quot;Times New Roman&quot;">
</span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.5pt;
font-family:华文中宋">请理性管理个人财富，不要拿生活必须资金、自用住房抵押贷款或其他借款投入钱币邮票市场。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:39.75pt;text-indent:-18.0pt;line-height:
18.0pt;mso-line-height-rule:exactly;mso-list:l0 level1 lfo1;tab-stops:list 39.75pt"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋;mso-bidi-font-family:
华文中宋" lang="EN-US"><span style="mso-list:Ignore">3、<span style="font:7.0pt &quot;Times New Roman&quot;">
</span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.5pt;
font-family:华文中宋">请客观评估自己投资抗风险能力，选择恰当的投资品种。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:39.75pt;text-indent:-18.0pt;line-height:
18.0pt;mso-line-height-rule:exactly;mso-list:l0 level1 lfo1;tab-stops:list 39.75pt"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋;mso-bidi-font-family:
华文中宋" lang="EN-US"><span style="mso-list:Ignore">4、<span style="font:7.0pt &quot;Times New Roman&quot;">
</span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.5pt;
font-family:华文中宋">请正确运用投资策略，留有适当资金以备不时之需。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:39.75pt;text-indent:-18.0pt;line-height:
18.0pt;mso-line-height-rule:exactly;mso-list:l0 level1 lfo1;tab-stops:list 39.75pt"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋;mso-bidi-font-family:
华文中宋" lang="EN-US"><span style="mso-list:Ignore">5、<span style="font:7.0pt &quot;Times New Roman&quot;">
</span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.5pt;
font-family:华文中宋">请认真了解所投资的藏品，不能仅凭市场传言盲目操作。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:39.75pt;text-indent:-18.0pt;line-height:
18.0pt;mso-line-height-rule:exactly;mso-list:l0 level1 lfo1;tab-stops:list 39.75pt"><!--[if !supportLists]--><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋;mso-bidi-font-family:
华文中宋" lang="EN-US"><span style="mso-list:Ignore">6、<span style="font:7.0pt &quot;Times New Roman&quot;">
</span></span></span><!--[endif]--><span style="mso-bidi-font-size:10.5pt;
font-family:华文中宋">请认真了解并掌握钱币邮票投资所需的必要知识和相关法规，提高自我保护的能力。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="mso-bidi-font-size:
10.5pt;font-family:华文中宋">本所没有授权任何个人或组织进行钱币邮票委托投资理财业务，为保护投资人的合法权益，请不要与任何人签订钱币邮票交易委托代理协议，否则由此引起的一切后果将由投资人承担。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">本所郑重提醒投资人，钱币邮票投资是一种风险投资，请分清投资与投机、风险和收益之间的关系，树立正确的投资理念，谨慎入市，理性操作，注意身心健康与资金安全。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">本风险提示书并不能提示从事钱币邮票交易的全部风险及钱币邮票市场的全部情形。投资人务必对此有清醒的认识。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><span style="mso-bidi-font-size:10.5pt;font-family:华文中宋">“投资有风险，入市须谨慎”。请切记风险！<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.75pt;line-height:18.0pt;mso-line-height-rule:
exactly"><a name="_GoBack"></a><span style="mso-bidi-font-size:10.5pt;
font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

</div>
				<!--EndFragment--></div>	    		

	   <p class="acc_style5"><input name="ck" id="cktrue" onclick="change(this.checked)" type="checkbox">我已认真阅读并完全理解风险告知书及投资者须知中各条款内容，自愿申请成为南京文交所钱币邮票交易中心投资者。</p>
	    <table width="692" cellspacing="0" cellpadding="0" border="0">
 			 <tbody><tr>
   			 <td width="255">&nbsp;</td>
	    		  <td width="110">	<input id="sub" value="注册" onclick="Subm();" style="background:url(jscss/btn3.png); no-repeat;font-size:12px; line-height:24px; width:82px; height:24px; text-align:center; color:#fff; border:0; cursor:hand;" disabled="disabled" type="button"></td>
	    		 <td width="327">	<input value="返回" onclick="history.back();" style="background:url(jscss/btn3.png); no-repeat;font-size:12px; line-height:24px; width:82px; height:24px; text-align:center; color:#fff; border:0; cursor:hand;" type="button"></td>
	    		</tr>
	    </tbody></table>
		<p class="acc_style7">说明：填表人明确此份申请表是投资者开户必备法律文件之一，保证以上填写的内容属实，并在上述填写内容发生变化时及时通知南京文交所钱币邮票交易中心。</p>

  <br>
  </form>
 </div>
<!-- 不显示在线客服<div id="QQFloat" class="Floating"  align="center" style="z-index:1100;position:absolute;bottom:80px;right:2px;width:auto;">
<a href="flow.html" target="_blank">
<img src="img/img1.png" border="0"></a></div> -->
<!-- <script src="js/server.js" type="text/javascript"></script> -->

<script language="JavaScript"> 

//document.getElementById("QQFloat").style.display="none"

</script>  

<script language="JavaScript"> 
//showArea();
 
</script>  




</import></body></html>