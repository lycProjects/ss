<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>南京文交所钱币邮票交易中心</title>
<link type="text/css" rel="stylesheet" href="jscss/style.css">
<script type="text/javascript" src="jscss/authentication.js"></script>
<!-- <script type="text/javascript" src="jscss/engine.js"></script> -->
<script type="text/javascript" src="jscss/FirmManager.js"></script>
<script type="text/javascript">

</script>


<script type="text/javascript"> 
var a=1;

	/* function conf(){
		var type= document.getElementById("type").value;
		window.location.href='./firmController.fir?funcflg=forward&type='+type;
	}
	 */
	function change(value){
			//2014-03-12 by chenyc 不再显示下一步，显示获取验证码
	/* 	var cktrue= document.getElementById("cktrue"); */
	//	var next= document.getElementById("next");
	//	next.disabled=!(value);
	//	var btn= document.getElementById("getCode");
	//改为申请开户，不需要手机验证
		var btn= document.getElementById("button");
		
		btn.disabled=!(value);
	}

	
	function getVerifyCode()
	{
		if(frm.registeredPhoneNo.value==""){
			frm.registeredPhoneNo.focus();
			alert("手机号码不能为空！");
			return false;
		}
		if(frm.registeredPhoneNo.value.length!=11){
			frm.registeredPhoneNo.focus();
			alert("手机号码长度只能为11位！");
			return false;
		}

		frm.getCode.disabled=true; 				
    	frm.verifyCode.disabled=false;
		
		var registeredPhoneNo=document.getElementById("registeredPhoneNo").value;
		
		FirmManager.sendMessage(registeredPhoneNo,function(data){
    			if(data==0){
	   				document.getElementById("message").innerHTML="<font color='green' size='-1'>验证码已经发到您的手机</font>";
	   			}else{
   				 	if(data==1){
   				 		document.getElementById("message").innerHTML="<font color='red' size='-1'>请输入正确的手机号码</font>";
   				 	}else if(data==2){
						document.getElementById("message").innerHTML="<font color='red' size='-1'>对不起您的手机号已经注册</font>";
					}else{
						document.getElementById("message").innerHTML="<font color='red' size='-1'>短信发送失败，请稍后再试</font>";
					}
					document.getElementById("getCode").value="获取验证码";
					refresh();
					a=-1;
	   			}
	   		});
         countDown(180);
	} 
	
 function countDown(secs){
		if(a<0){
			a=1;
			return false;
		}
		document.getElementById("getCode").value=secs+"秒后可重发";
		if(--secs>0){
			setTimeout("countDown("+secs+" )",1000);
		}else{
			document.getElementById("getCode").value="获取验证码";
			refresh();
		}
	} 
	
	function refresh(){	
    		frm.getCode.disabled=false; 	 				
	}
	
	function clicktrue(){
		var Code = document.getElementById("getCode");
	    Code.disabled=false; 					
	}
	
    function Verify(){
		/*对手机验证码进行判断*/
		//隐藏短信验证










		 
		frm.action="${pageContext.request.contextPath }/register/reg3.jsp";
		frm.submit();
	}
</script>

<style type="">
.acc_lt_1 {
    width: 692px;
    height: 37px;
    background: url(jscss/l12.gif) no-repeat;
    display: block;
    margin: 5px 0px 5px 0px;
}
</style>
	</head>
 
<body>
	<form id="frm" name="frm" method="post">
  <div class="acc_main">
  <h3 class="acc_tit">开户流程</h3>
  <div class="acc_lt acc_lt_1"></div>
  <h3 class="acc_tit">温馨提示</h3>
  <p class="acc_style2">
   1.请您不要在网吧等公共场所使用网上开户系统<br>
2.一个手机号码仅可注册一个交易账号<br>
3.建议您使用IE浏览器提交开户申请，避免出现提交失败等情况的发生<br>
4.如您存有疑问，请拨打025-84569988
  </p>                                
 <div class="acc_kj"><div class="Section1" style="layout-grid:15.6pt">

<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">南京文化艺术产权交易所<o:p></o:p></span></p>

<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">钱币邮票交易中心<o:p></o:p></span></p>


<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">交易规则<o:p></o:p></span></p>


<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">（2014年7月修订稿）<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">第一章 总则钱币邮票线上交易规则(暂行)<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一条
为规范南京文化艺术产权交易所钱币邮票交易中心（以下简称<span lang="EN-US">“</span>本中心<span lang="EN-US">”</span>）为规范南京文化艺术产权交易所钱币邮票交易中心（以下简称“本中心”）钱币邮票线上交易行为，维护本中心交易秩序，保护投资人会员合法权益，根据《中华人民共和国物权法》、《中华人民共和国电子签名法》、《中华人民共国合同法》等法律法规，制定本交易规则。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二条
凡参与本中心钱币邮票交易的会员都必须遵守本规则。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三条
本中心交易的钱币邮票等藏品都适用本规则。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四条
钱币邮票交易遵循公开、公平、公正的原则。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五条
会员参与本中心钱币邮票交易须本着自愿、有偿、诚实信用的精神，遵守国家相关法律法规及本中心的业务规则。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><span style="mso-spacerun:yes">&nbsp;</span><o:p></o:p></span></p>

<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">第二章 会员<span lang="EN-US"><o:p></o:p></span></span></p>



<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一节 会员资格<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六条  自然人。在本中心进行钱币邮票交易的自然人，必须按相关规定提供各项证明材料，同时具备以下条件：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">1</span><span style="font-family:华文中宋">） 年满18周岁，具有完全民事行为和民事责任能力；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">2</span><span style="font-family:华文中宋">） 对钱币邮票投资市场有一定的市场认知，具有一定的钱币邮票市场投资经验；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">3</span><span style="font-family:华文中宋">） 对本中心采用的钱币邮票交易模式和投资风险有较深的了解，具有较强的风险识别能力和风险承受能力；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">4</span><span style="font-family:华文中宋">） 有一定的互联网、计算机操作能力，遵守国家相关法律法规，依法从事钱币邮票交易活动;<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">5</span><span style="font-family:华文中宋">）本中心规定的其他条件。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七条
机构。在本中心进行钱币邮票交易的机构，必须按相关规定提供各项证明材料，同时具备以下条件：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">1</span><span style="font-family:华文中宋">） 境内外各类正常运营的企事业法人、社会团体法人或其他组织，不存在法律法规、本中心会员管理规定以及相应交易规则禁止或限制其投资的情形；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">2</span><span style="font-family:华文中宋">） 对本中心采用的钱币邮票交易模式和投资风险有较深的了解，具有较强的风险识别能力和风险承受能力；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">3</span><span style="font-family:华文中宋">） 了解钱币邮票投资风险，已履行完毕法定和/或公司章程规定的内部决策程序；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">4</span><span style="font-family:华文中宋">）本中心规定的其他条件。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第八条
 机构的从业人员，如果使用本中心交易系统，必须按照自然人的要求逐一注册登记。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第
九条
  
会员必须遵守国家有关法律法规、本中心的各项管理规定和业务规则；接受有关行政管理部门和本中心的管理与监督；遵守社会公共道德、相互尊重、严格自律、自
觉维护正常的交易和交收秩序，认真履行应尽职责；充分行使享有的合法权利，自觉维护会员的合法权益和本中心的商业声誉。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十条
 会员应遵循国家相应的法律法规，自行申报和缴纳个人应承担的各项税收。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二节
会员分类<span lang="EN-US"><o:p></o:p></span></span></p>

 

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十一条
 本中心会员分为投资人会员和经纪会员。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十二条
投资人会员是通过本中心审核，参与本中心钱币邮票线上交易的自然人会员或机构会员。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十三条
经纪会员是通过本中心专业委员会批准的机构会员，获准从事以下一项或多项业务：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">1</span><span style="font-family:华文中宋">）发展投资人会员；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">2</span><span style="font-family:华文中宋">）申请新藏品挂牌交易；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">3</span><span style="font-family:华文中宋">）申请藏品入场登记；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">4</span><span style="font-family:华文中宋">）加入专业委员会；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">5</span><span style="font-family:华文中宋">）本中心规定的其他业务；<span lang="EN-US"><o:p></o:p></span></span></p>
 

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十四条 经纪会员在任何情况下不代表本中心。投资人会员与经纪会员间的关系为相互自愿的合约关系。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十五条 针对经纪会员的不专业行为，投资人会员有权向本中心投诉。本中心会在5个工作日内给予答复。<span lang="EN-US">
<o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三节
会员注册<span lang="EN-US"><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十六条
投资人参与本中心钱币邮票交易，须事先按照相关规定申请成为本中心会员。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十七条
本中心会员实行实名制。</span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十八条
投资人按要求提供会员资格申请材料，并对所提交资料的真实性、准确性、完整性和合法性负法律责任。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第十九条
投资人所提交资料经审核符合要求并与本中心书面或在线签署《钱币邮票投资人会员入市协议》、《钱币邮票风险提示书》，即正式取得钱币邮票投资人会员资格。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二十条
投资人会员签订《钱币邮票投资人会员入市协议》，即视为同意遵守本中心的交易规则、会员管理制度等文件的规定，并同意委托本中心代理投资人会员所持有的、但未实际交收藏品的保管、保险、登记等相关事宜。</span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二十一条
投资人会员签订《钱币邮票风险提示书》，即视为已仔细阅读风险提示书，并自愿承担钱币邮票交易带来的风险。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四节 交易账户<span lang="EN-US"><o:p></o:p></span></span></p>
<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly">第二十二条  会员必须在本中心指定的银行开设资金账户，并开通银商转账业务。</p>
<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二十三条  本中心一个会员对应一个交易账户。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二十四条  会员同意本中心按照会员的交易申请和电子合同结算每一笔交易，包括划拨资金、支付交易费用和调整交易物的持有量。<span lang="EN-US"><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二十五条  本中心提供电子版的交易账户结算单。<span lang="EN-US"><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二十六条  会员的资金可以在交易账户和银行资金账户间自由划拨，费用自理。本中心对于资金划拨有监管的责任和权利，对于资金监管导致的资金划拨延迟，会员需自行承担由此产生的相关后果。<span lang="EN-US"><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五节 会员管理<span lang="EN-US"><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二十七条  本中心将不定期对会员的基本情况进行核查，如发现存在提供虚假资讯、不及时更新重大变更信息以及其他不符合本中心有关规定的情况，可冻结其会员账户，并根据情况作出处理。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二十八条  对于违反本中心管理规定和业务规则的会员，本中心有权视其行为性质和情节严重程度，给予警告、通报批评、罚款、限期整改、暂停交易、限制交易许可权、终止会员资格等处罚；涉嫌犯罪的，按法律程序提交司法诉讼。</span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二十九条  会员若对本中心的处理决定不服，有权自收到处理决定后10 个工作日内，以书面形式向本中心提请复议。对于会员的复议申请，本中心受理并做出决定。复议期间不影响处理决定的执行。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">第三章 藏品<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一节 藏品目录<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三十条  在本中心进行交易的钱币邮票仅限于下列六个大类：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">1</span><span style="font-family:华文中宋">）中国人民银行发行的现代纪念币；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">2</span><span style="font-family:华文中宋">）退出流通使用领域的人民币；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">3</span><span style="font-family:华文中宋">）中国人民银行发行的连体钞、纪念钞，港澳台纪念钞；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">4</span><span style="font-family:华文中宋">）国家主管部门发行的电话卡、外汇劵等有价凭证；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">5</span><span style="font-family:华文中宋">）国家邮政主管部门发行的邮资品；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">6</span><span style="font-family:华文中宋">）其他有价藏品。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三十一条  在本中心进行交易的六大类藏品中会有若干个交易品种，交易品种的全部为藏品目录。本中心实行挂牌藏品准入制度，全部交易藏品必须按藏品目录指定的编号登记后方可交易。-<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三十二条  每个藏品条目包括交易品种名称、代码、交易单位和加价幅度，交易单位如“枚”、“张”、“套”、“版”等。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三十三条  本中心是发布和维护交易藏品目录的唯一机构。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二节 挂牌申请<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三十四条  投资人会员可以委托本中心经纪会员向本中心提出挂牌申请。投资人会员和经纪会员须向本中心提交《委托挂牌代理协议》、《挂牌申请书》、《可行性分析研究报告》、《持有人承诺书》等相关文件。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三十五条  投资人会员向本中心提交挂牌申请，视为其接受本中心的各项交易条款和投资人会员的权利与义务。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第
三十六条  
经纪会员提供的该藏品《市场分析可行性研究报告》，包括但不仅限于藏品的合法性、市场规模、市场趋势、投资价值研究和由专业人员签发的藏品价值评估报告。
《市场分析可行性研究报告》应当对影响钱币邮票投资价值因素进行全面分析，运用行业公认的估值方法对挂牌实物的合理投资价值进行预测。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">第三十七条  撰写《市场分析可行性研究报告》应当遵守下列要求：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><span style="mso-spacerun:yes">&nbsp;1）独立、审慎、客观；<span lang="EN-US"><o:p></o:p></span></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><span style="mso-spacerun:yes">&nbsp; </span>2）引用的资料真实、准确、完整并须注明来源；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><span style="mso-spacerun:yes">&nbsp; </span></span><span style="font-family:华文中宋">3）无虚假记载、误导性陈述或者重大遗漏。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><span style="mso-spacerun:yes">&nbsp;第三十八条  《市场分析可行性研究报告》仅供投资人会员参考，不能作为本中心对该藏品投资前景的承诺或认可。<span lang="EN-US"><o:p></o:p></span></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><span style="mso-spacerun:yes">第三十九条  新藏品首次挂牌流通市值需达以下要求：<span lang="EN-US"><o:p></o:p></span></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><span style="mso-spacerun:yes">&nbsp;1）中国人民银行发行的现代纪念币：首次挂牌流通市值不低于人民币200万元；<span lang="EN-US"><o:p></o:p></span></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><span style="mso-spacerun:yes">&nbsp; </span></span><span style="font-family:华文中宋">2）退出流通使用领域的人民币：首次挂牌流通市值不低于人民币200万元；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">3）中国人民银行发行的连体钞、纪念钞，港澳台纪念钞：首次挂牌流通市值不低于人民币200万元；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">4）国家主管部门发行的电话磁卡、外汇劵等有价凭证：首次挂牌流通市值不低于人民币100万元；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">5）国家邮政主管部门发行的邮资品：首次挂牌流通市值不低于人民币200万元（其中邮资封片类不低于人民币100万元）；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">6) 其他有价藏品：首次挂牌流通市值不低于人民币100万元。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四十条  本中心收到挂牌申请后，于五个工作日内进行初步审核，审核合格后组织本中心专家委员会评审，评审通过后经本中心新品挂牌审核小组复审，复审通过后本中心将向挂牌申请人出具挂牌申请回复函。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四十一条  对于本中心公告的公开征集挂牌藏品名单中的藏品，经新藏品挂牌审核小组审核同意后，该藏品可直接进入挂牌托管流程，当托管市值达到交易规则要求即可挂牌上市交易。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四十二条 新藏品经本中心相关部门审核通过后，本中心将在官网上发布藏品挂牌公告,进入藏品目录。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三节 入场登记<span lang="EN-US"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第
四十三条  
持有本中心挂牌藏品的投资人会员，在本中心发布托管公告后，可以在托管日前通过书面、邮件、微信或交易客户端向本中心提出入场登记申请。书面申请须提交以
下文件：《入场登记申请书》、《持有人承诺书》、《委托入场登记协议》、持有人身份证明，如投资人会员委托他人代为办理鉴定入库事项，还需递交《授权委托
书》以及委托人与被委托人身份证明；交易客户端提交申请须确认阅读、理解、接受《持有人承诺书》的所有条款。通过邮件、微信提交申请的，须在托管日补交上
述书面申请的相关资料。上述申请必须经本中心审核同意后方可进入托管流程。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四十四条 投资人会员办理完托管入库手续后的两个交易日内，须将挂牌费通过交易客户端支付至交易中心，在规定时间内未及时支付挂牌费的，每延期一日收取挂牌藏品市值0.1%的滞纳金。鉴定费现场收取，凭交款凭证进行藏品鉴定。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">第四十五条  申请入市藏品经专业机构鉴定合格，进入本中心代理银行托管库；对经鉴定后不符入库要求之藏品，由鉴定机构退还挂牌申请人。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">第四十六条  投资人会员申请挂牌藏品经本中心组织鉴定入库后，本中心托管中心出具鉴定托管单并于指定时间内将鉴定托管单转为投资人会员的交易账户持仓。投资人会员在交易客户端支付完挂牌费后，本中心将投资人会员的持仓全部或部分解冻后方可上市交易。<span lang="EN-US"><span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">第四十七条  投资人会员交易账户生成挂牌藏品代码与实际持有数量后，其鉴定托管单持有人联中所主张的各种权益即转移到投资人会员交易账户中，投资人会员不得再凭鉴定托管单向第三方鉴定机构、本中心托管部主张任何权益。<span lang="EN-US"> <o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">第四十八条  投资人会员为机构法人的，办理实物托管必须经法定代表人或其委托代理人签字确认并加盖公章；投资人会员为自然人的，须由持有人本人或其委托代理人签字确认。<span lang="EN-US"> <o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四十九条  托管流程完成后，本中心将及时发布藏品托管入库公告。<span lang="EN-US"><o:p></o:p></span></span></p>
 
<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>



<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四节 再托管申请<span lang="EN-US"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十条  已挂牌藏品在触及再托管条件时方可再次托管，本中心将在官网发布再托管公告。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十一条  在本中心发布相关藏品再托管公告时，申请人可委托本中心经纪会员向本中心提出再托管申请。申请时须向本中心提交《委托再托管代理协议》、《再托管申请书》及《持有人承诺书》。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十二条  再托管细则如下：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">1）现货基准价：本中心综合考虑挂牌藏品品相、鉴定、存储等各种因素后，将依托市场信息采集员采集每个交易日北京、上海、广州及专业网站现货市场报价，并综合上述现货市场报价之均价乘以130%作为现货基准价；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">2）风险警示：当挂牌藏品线上5日均价高于现货基准价且超出部分达现货基准价的100%时，本中心将进行风险警示，发布风险提示公告；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">3）再托管：当挂牌藏品线上5日均价高于现货基准价且超出部分达现货基准价的150%时，本中心将发布再托管公告，对该挂牌藏品进行再托管；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">4）再托管总量：再托管公告中将明确再托管藏品总量。再托管藏品总量将不超过该藏品已挂牌总量的30%，具体比例以再托管公告为准；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">5）本中心再托管申请只针对该挂牌藏品线上持有人，并根据再托管总量、总流通量、持有人持有数量按比例确定持有人的再托管数量。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十三条  当某一挂牌藏品有超过60%流通量的线上持有人共同向本中心提交再托管申请时，本中心有权根据该藏品的线上交易和相关市场情况决定是否针对该藏品线上持有人进行再托管。<span lang="EN-US"><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五节 藏品退市<span lang="EN-US"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十四条  本中心对于不活跃的藏品，或有较大争议的藏品，将启动退市流程。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">第四章 发行申购<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一节 申购原则<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十五条  进入本中心藏品目录的新藏品，投资人会员可通过系统进行申购。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十六条  申购委托在申购日交易时间内可以撤单，其他时间不可以撤单。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十七条  投资人会员申购前账户中需存有足额申购款，以保证申购委托成功。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十八条  申购新藏品须全额预缴申购款及申购手续费。申购抽签结束后，未中签申购款及相应申购手续费将退还至投资人会员账户。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五十九条  新藏品申购日期以本中心公告为准。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二节 申购价<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六十条  申购价即为新藏品挂牌指导价，是指经本中心专家委员会评审通过、挂牌审核小组审核通过的新藏品首日挂牌交易指定参考价。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">第六十一条  参考价定价根据经纪会员推荐挂牌价、专家委员会综合评估价、专业市场现货均价综合考虑制定。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">1）经纪会员推荐挂牌价：由新藏品挂牌申请人与经纪会员协商制定；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">2）专家委员会综合评审价：由专家委员会评审小组依据《专家委员会评审规则》确定该藏品在评审时点可能实现的参考价值；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US">3）专业市场现货均价采集于专业交易市场，由本中心特约信息员按规定申报。新藏品现货市场均价为发布该藏品托管公告之前一周现货市场平均价。<span lang="EN-US"><o:p></o:p></span></span></p>



<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三节 申购时间<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六十二条  投资人会员可以于申购日（以下简称T日）申购发行的新藏品，申购时间为T日的9:30至11:30和13:00至15:00。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四节 申购流程<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六十三条  投资人会员申购（T日）：投资人会员在申购时间内缴足申购款，进行申购委托，申购委托提交后，申购资金将被冻结。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六十四条  抽签（T+1日）：本中心根据抽签规则进行抽签，对未中签部分的申购款予以解冻。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六十五条  公布中签结果（T+1日）：公布中签结果。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六十六条  挂牌交易（T+2日）：新藏品挂牌上市交易。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><span style="mso-spacerun:yes">&nbsp;</span><o:p></o:p></span></p>

<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">第五章 交易规则<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一节 交易时间<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六十七条  本中心交易时间为：每周一至周六 上午9:30-11:30、下午13:00-15:00，出入金及银商签约时间为：交易日的9:00-15:30，国家法定节假日和本中心公告的休市日除外。交易期间内因故停市，不作顺延。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六十八条  藏品公告另有规定的，交易时间按藏品公告为准。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第六十九条  根据市场发展需要，本中心可以调整交易时间。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p> 

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第二节 交易申请<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七十条  在交易时间内，交易系统接受交易申请，申请当日有效。如果一笔申请不能一次性全部成交，未成交的部分继续参加当日的交易。本规则另有规定的除外。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七十一条  交易申请应视为投资人会员向本中心提交的交易委托。一旦成交，申请人必须履行相应的义务，并按照本规则确定的方法与对方结算。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七十二条  交易申请应包括交易品种代码、名称、交易数量和交易价格，以及本中心要求的其他内容。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七十三条  购买申请。当投资人会员提交购买申请时，应保证交易账户有足够的资金。系统会在申请有效期内，锁定相应的金额。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七十四条  转让申请。当投资人会员提交转让申请时，应保证交易账户持有足够数量的交易藏品。系统会在申请有效期内，锁定相应数量的交易藏品。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七十五条  单笔交易申请最大数量原则上不超过本中心该藏品市场流通量的1%。根据市场流通量的变化，本中心可适时调整单笔申请最大数量。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第
七十六条  
本中心对钱币邮票交易实行价格波动限制，新藏品挂牌交易首日价格波动幅度最大为30%，次日起日价格波动幅度最大为10%。当日有效价格范围的计算方法
为：当日参照价格×（1±日价格波动幅度）。计算结果按照四舍五入原则取至价格最小变动单位。根据市场管理需要，本中心可以调整交易藏品的日价格波动幅
度。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七十七条  开盘价为当日该藏品的第一笔成交价格。收盘价为当日该藏品交易时间内最后三分钟所有交易的成交量的加权平均价，最后三分钟无交易的，其收盘价为当日最后一笔成交价。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七十八条  当日参照价格为该藏品前一交易日的收盘价。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第七十九条  在接受交易申请的时间内，未成交申请可以撤销，撤销指令经本中心确认后方为有效。被撤销和失效的申请，本中心应当在确认后及时解除对投资人会员相应的款项或实物的锁定。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p> 

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第三节 电子合同<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第八十条  转让方与受让方价格达成一致，交易合同以电子合同形式签署。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第八十一条  系统收到交易申请后，会在第一时间寻找符合相应条件的交易方。无论是部分还是全部成交，系统会生成相应的电子合同。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第八十二条  电子合同的主要条款包括：合同编号、交易品种名称、藏品代码、成交价格、成交数量、计价单位、交易时间、交易手续费等。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly">第八十三条  电子合同以人民币计价，计价单位为元。</p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第八十四条  买卖双方同意根据电子合同和相关交收规则的约定，卖方向买方转移所交易藏品的所有权，买方向卖方划转相对应的资金。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第
八十五条  
因不可抗力、意外事件、交易系统被非法侵入等原因造成严重后果的交易，本中心可以采取适当措施或认定无效。对显失公平的交易，经本中心研究认定后，可以采
取适当措施进行处理。违反本规定相关条款，严重破坏市场正常运行的交易，本中心有权宣布取消，由此造成的损失由违规交易者承担。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p> 

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第四节 实物交收<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第八十六条 实物交收须由本中心投资人会员或其委托代理人在本中心指定地点办理。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第八十七条  钱币邮票实物交收的数量必须是本中心规定的该藏品最低交收数量的整数倍。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第八十八条  投资人会员通过交易客户端提出实物交收申请：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">1）投资人会员在每个交易日的9:30-11:30、13:00-15:00可通过交易客户端注册提货单，生成提货单后，投资人会员所提货藏品及其对应数量被锁定进入待交收状态；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">2）本中心接到投资人会员的提货单，审核并确认后，安排进入提货流程；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">3）投资人会员携提货单及密码，至本中心指定交收地办理提货出库。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第
八十九条  投资人会员（自然人）办理实物交收时所需的全套文件： 
“藏品提货单”传真件（或打印件）、投资人会员身份证原件与复印件。委托他人提货的，还需提供提货人身份证原件与复印件、经公证处公证的投资人会员签字的
代理交收声明。投资人会员（机构）办理实物交收时所需的全套文件：“藏品提货单”传真件（或打印件）、机构营业执照复印件（盖章）、机构实物交收授权委托
书（盖章）、受托提货人的身份证原件与复印件。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十条  仓库办理交收的工作时间：指定交收日的09:45-16:00。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十一条  本中心不承担钱币邮票交易过程中所产生的税收代扣、代缴的义务，会员应按照国家有关法律法规自行申报和缴纳。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十二条  投资人会员提出交收申请后，进入“藏品提货单”状态的钱币邮票实物将被锁定，投资人会员有权在交易客户端对该提货单进行注销，注销后该“藏品提货单”将被取消，其对应的钱币邮票实物将被解除锁定。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十三条  投资人会员提出交收申请后，若在指定的交收时间内未办理实物交收业务，该“藏品提货单”将作废。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十四条  “藏品提货单”作废的，其对应的钱币邮票实物仍被锁定，需要投资人会员在交易客户端进行注销提货单以解除锁定。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十五条  对于单一交易日提货数量达到该藏品总托管入库数量的5%时，本中心将及时发布藏品出库公告。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p> 

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第五节 市场管理<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十六条  为了维护市场的稳定，保护投资人会员的利益，本中心可以对特定交易藏品临时停牌。对于停牌原因和恢复交易的时间，本中心将予以公告。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十七条  本中心在交易时间内发布交易即时行情和相关的行业新闻等辅助信息。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十八条  本中心实行市场信息员信息采集制度，实现钱币邮票交易中心平台与全国各大钱币邮票专业市场价格联动。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第九十九条  本中心实行风险警示制度。当本中心认为必要时，可以分别采取或同时采取要求投资人会员报告情况、谈话提醒、书面警示、公开谴责、发布风险警示公告、暂停或限制交易、取消交易资格等措施中的一种或多种，以控制风险。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一百条  本中心产生的交易信息归本中心所有，未经本中心许可，任何机构和个人不得使用和传播。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一百零一条  经本中心许可使用交易信息的机构和个人，未经本中心同意，不得将本中心交易信息提供给其它机构和个人使用或予以传播。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一百零二条  当出现由于不可抗力或计算机系统故障、网络故障等异常时，交易市场进入异常情况并暂停交易。一般暂停交易的期限不超过3个交易日。<span lang="EN-US"><o:p></o:p></span></span></p>
<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一百零三条  本中心宣布交易市场进入异常情况并决定采取紧急措施后，将在第一可能的时间内予以公告。由于在市场异常情况下采取相应措施所造成的损失，本中心不承担任何责任。<span lang="EN-US"><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋" lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-align:center;text-indent:21.0pt;
mso-char-indent-count:2.0;line-height:18.0pt;mso-line-height-rule:exactly" align="center"><span style="font-family:华文中宋">第六章 其他<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一百零四条  本中心根据需要有权选择升级或更换交易系统，并有权要求投资人会员配合本中心采取相应措施。因投资人会员不配合造成的自身损失，本中心不承担任何责任。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一百零五条  本中心升级或更换交易系统会及时进行公告。<span lang="EN-US"><o:p></o:p></span></span></p>


<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一百零六条  本交易规则中所述时间，以本中心交易系统显示的时间为准。<span lang="EN-US"><o:p></o:p></span></span></p>
<p class="MsoNormal" style="text-indent:21.0pt;mso-char-indent-count:2.0;
line-height:18.0pt;mso-line-height-rule:exactly"><span style="font-family:华文中宋">第一百零七条  本交易规则由本中心负责解释与修订，自发布之日起开始实施。<span lang="EN-US"><o:p></o:p></span></span></p>

</div>


 </div>
  <p class="acc_style5"><input id="cktrue" name="ck" onclick="change(this.checked)" type="checkbox"><b><font size="2px">我已认真阅读并完全理解《钱币邮票线上交易规则（暂行）》，并已对交易市场其他交易制度和规则有了全面了解，同意遵守交易市场各项管理制度。</font></b></p>
<!-- 隐藏手机短信20140320xups -->
<!-- 
   <h3 class="acc_tit" >手机短信认证</h3>
    <p class="acc_style2">
     我们将以手机短信的形式确认您所提交的开户意向，此后，该手机号码将作为我们与您保持联系的重要方式之一。<br />
开户过程中，你需要按照网页提示完成您的个人信息录入，这些信息将用于核实您的真实身份并用于我们与您联系。
  </p>
-->
<table width="692" cellspacing="0" cellpadding="0" border="0">
  <tbody><tr height="30">
  <!-- 隐藏手机短信20140320xups -->
  <!-- 
    <td width="142" align="left">请输入您的手机号码：</td>
    <td width="109">
        <input type="text" name="registeredPhoneNo" id="registeredPhoneNo" style="width:100px;"/>
     </td>
    <td width="196"><span id=message style="color:#ff0000;">*请输入您的手机号码获取验证码</span></td>
    <td width="245"><input id=getCode class=btn disabled onclick=getVerifyCode(); type="button" name=getCode value="获取验证码" style="background:url(/SelfOpenAccount/img/btn3.png); no-repeat;font-size:12px; line-height:24px; width:82px; height:24px; text-align:center; color:#fff; border:0; cursor:hand;"/></td>
  </tr>
  <tr height="30"> -->




   <td><input name="button" disabled="disabled" value="申请开户" onclick="Verify();" class="btn" id="button" style="background:url(jscss/btn3.png); no-repeat;font-size:12px; line-height:24px; width:82px; height:24px; text-align:center; color:#fff; border:0; cursor:hand;" type="button"></td>

  </tr>
</tbody></table> 

  <!--  不需要显示上一步
   <td width="110"><input type="button" value="上一步" style="background:url(img/btn3.png); no-repeat;font-size:12px; line-height:24px; width:82px; height:24px; text-align:center; color:#fff; border:0; cursor: pointer;" onclick="javascript:window.location.href='Account.html'"/></td>
    -->
 
<table width="692" cellspacing="0" cellpadding="0" border="0">
  <tbody><tr height="40">
    <td width="255">&nbsp;<input id="brokerId" name="brokerId" value="1046" type="hidden"></td>
    </tr>
</tbody></table>
</div>
</form>
<!--不需要显示在线客服 
<div id="QQFloat" class="Floating"  align="center" style="z-index:1100;position:absolute;bottom:80px;right:2px;width:auto;">
<a href="flow.html" target="_blank">
<img src="img/img1.png" border="0"></a></div> -->
<!-- <script src="js/server.js" type="text/javascript">--</script> -->

<script language="JavaScript"> 

//document.getElementById("QQFloat").style.display="none"

</script>  

	

</body></html>