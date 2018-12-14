<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>文古苑-文交开户</title>
<div class="site-white-bg"  onLoad="init()">
	<div class="wrap list-page">
		<div class="breadcrumbs">
			<div class="fl">
				<div class="hqlm1">&nbsp;&nbsp;文交开户</div>
			</div>
		</div>
		<h3>第一步：请任意选择下面一个文所进行开户</h3>
		<div class="site-box" style="margin-top: 20px; margin-bottom: 20px;">
			<ul class="bourse-name border-top" id="js_regNav">
				<li data-id="1" class="active">南京文交所</li>
				<li data-id="6">华夏文交所</li>
				<li data-id="11">中文两岸文交所</li>
			</ul>
		</div>
		<h3 style="padding-top: 0;">
			第二步：您选择了
			<span id="js_regTitle">南京文交所</span>
		</h3>
		<h4 class="font-orange" id="js_regContent" style="margin-top: 10px;">文交所开户所需资料：姓名,电话,身份证号码,农行/工行/平安（身份证正面照片）<font color="red" style="font-weight: bold;float: right;padding-right: 40px">文古苑服务码：666888</font></h4>
		<div class="site-box" style="margin-top: 20px;">
			<div>
				<p id="js_regFrame">
					<iframe src="${pageContext.request.contextPath}/register/reg1.jsp" width="100%" frameborder="0" scrolling="auto"
						style="border: 0; width: 100%; height: 800px; border-top: 1px solid #C9C9C9;" class="js_tabBox"></iframe>
				</p>
			</div>
		</div>
	</div>
</div>
<script src="${pageContext.request.contextPath}/js/iframe.js"></script>
