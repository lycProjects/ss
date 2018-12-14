<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>${news.title }</title>
<!--页面小导航-->
<body onload="createCode()">
	<div class="s-market-head">
		<ol class="breadcrumb changeol">${navCode }</ol>
	</div>
	<div class="main">
		<div class="mainTL" id="mainTL">
			<div class="center" style="margin-bottom: 26px">
				<h3 class="centertitle">${news.title }</h3>
				<div class="navshow">
					<span class="navshow1">发布时间:</span>
					<span class="navshow6">
						[
						<fmt:formatDate value="${news.publishDate }" type="date" pattern="yyyy-MM-dd HH:mm:ss" />
						]&nbsp;
					</span>
					<span class="navshow6">作者：${news.author }&nbsp;&nbsp;新闻类别：[${news.typeName }]&nbsp;&nbsp;阅读次数：${news.click }&nbsp;</span>
				</div>
				<!-- <div class="navpic">
					<a href="#">
						<img src="../../img/76522_1894150_104523.jpg" width="600" height="450" />
					</a>
				</div> -->
				<div class="bottom">
					<div class="bright">${news.content }</div>
				</div>
				<hr />
				<div class="bot">
					<div class="botpo">${pageCode }</div>
				</div>
			</div>
			<div id="SOHUCS" sid="${news.newsId }"></div>
			<script type="text/javascript">
				(function() {
					var appid = 'cysDES2CB';
					var conf = 'prod_6245b7b46bf545f8c99a3ace78e0538b';
					var width = window.innerWidth
							|| document.documentElement.clientWidth;
					if (width < 960) {
						window.document
								.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="http://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id='
										+ appid
										+ '&conf='
										+ conf
										+ '"><\/script>');
					} else {
						var loadJs = function(d, a) {
							var c = document.getElementsByTagName("head")[0]
									|| document.head
									|| document.documentElement;
							var b = document.createElement("script");
							b.setAttribute("type", "text/javascript");
							b.setAttribute("charset", "UTF-8");
							b.setAttribute("src", d);
							if (typeof a === "function") {
								if (window.attachEvent) {
									b.onreadystatechange = function() {
										var e = b.readyState;
										if (e === "loaded" || e === "complete") {
											b.onreadystatechange = null;
											a()
										}
									}
								} else {
									b.onload = a
								}
							}
							c.appendChild(b)
						};
						loadJs("http://changyan.sohu.com/upload/changyan.js",
								function() {
									window.changyan.api.config({
										appid : appid,
										conf : conf
									})
								});
					}
				})();
			</script>
		</div>
		<div class="mainTR" id="mainTR">
			<div class="center">
				<div class="centerposition">
					<span class="centerh3">热门新闻</span>
					<ul class="centerul">
						<c:forEach var="hotNews" items="${hotNewsList }" varStatus="allStatus" begin="0" end="7">
							<li><a href="${pageContext.request.contextPath}/show/${hotNews.newsId }.html">${fn:substring(hotNews.title,0,16) }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="centerposition">
					<span class="centerh3">最新新闻</span>
					<ul class="centerul">
						<c:forEach var="newestNews" items="${newestNewsList }" varStatus="allStatus" begin="0" end="7">
							<li><a href="${pageContext.request.contextPath}/show/${newestNews.newsId }.html">${fn:substring(newestNews.title,0,16) }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<%-- <div class="pinglun2">
		<div class="yonghu">
			<div style="margin-bottom: 10px">
				<span style="font-size: 18px">用户评论</span>
			</div>
			<div class="yonghulogo" style="height: auto !important">
				<c:if test="${commentList== null || fn:length(commentList) == 0}">
					<div style="margin-bottom: 10px">
						<span style="color: #FF6700">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;暂无用户发表评论，赶快来抢沙发吧~</span>
					</div>
				</c:if>
				<c:forEach var="comment" items="${commentList }" varStatus="allStatus">
					<div class="logonav" style="height: 99px">
						<div style="margin-left: 10px">
							<a class="logoone">
								<img src="${pageContext.request.contextPath}/img/default.png" width="40" height="40" />
							</a>
						</div>
						<div style="margin-top: 12px; margin-left: 56px;">
							<span class="logotwo">
								&nbsp;&nbsp;&nbsp;游客:IP&nbsp;&nbsp;&nbsp;${comment.userIP }&nbsp;&nbsp;&nbsp;[&nbsp;
								<fmt:formatDate value="${comment.commentDate }" type="date" pattern="yyyy-MM-dd HH:mm:ss" />
								&nbsp;]
							</span>
						</div>
						<div class="logoping">
							<span>${comment.content }</span>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div> --%>
		<%-- 	<div style="clear: both">
		<div class="pinglun">
			<div class="pinglundiv">
				<span class="navpinglun">发表评论</span>
				<span class="navmeg">文明上网理性发言，请遵守新闻评论服务协议</span>
			</div>
		</div>
		<div style="clear: both;">
			<form action="${pageContext.request.contextPath}/comment/save" method="post" onsubmit="return textareaCheck()">
				<div>
					<input type="hidden" value="${news.newsId }" id="newsId" name="newsId" />
					<!-- news.newsId获取打开新闻后传入的Attribute -->
					<textarea rows="5" style="width: 100%; border-color: #dcdcdc; border-radius: 8px;" id="content" name="content"></textarea>
				</div>
				<div>
					<div style="float: left; margin: 10px 0px">
						<div>
							<input type="text" name="writecode" id="writecode" placeholder="&nbsp;请输入验证码"
								style="height: 30px; border: 1px solid #dcdcdc; outline: none; border-radius: 3px;" />
							<input type="button" id="checkCode" name="checkcode" value="请输入验证码"
								style="width: 100px; height: 30px; background-image: url(img/yzbg.png); color: rgb(255, 103, 0); font-weight: bold; border: none; outline: none"
								onClick="createCode()" />
						</div>
					</div>
					<button class="mybutton" id="buttonForm" type="submit" onClick="validate();">提&nbsp;&nbsp;交</button>
				</div>
			</form>
		</div>
	</div> --%>
		
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
	var code; //在全局 定义验证码
	var flag;
	function createCode() {
		code = new Array();
		var codeLength = 5; //验证码的长度
		var checkCode = document.getElementById("checkCode");
		checkCode.value = "";

		var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C',
				'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q',
				'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');

		for (var i = 0; i < codeLength; i++) {
			var charIndex = Math.floor(Math.random() * 34);
			code += selectChar[charIndex];
		}
		if (code.length != codeLength) {
			createCode();
		}
		checkCode.value = code;

		if (checkCode.style.backgroundImage == 'url("img/yzbg.png")') {
			checkCode.style.backgroundImage = "url(img/yzbg1.png)";
		} else if (checkCode.style.backgroundImage == 'url("img/yzbg1.png")') {
			checkCode.style.backgroundImage = "url(img/yzbg2.png)";

		} else {
			checkCode.style.backgroundImage = "url(img/yzbg.png)";
		}
	}

	function validate() {
		var inputCode = document.getElementById("writecode").value
				.toUpperCase();
		if (inputCode.length <= 0) {
			alert("请输入验证码！");
			flag = -1;
			return false;
		} else if (inputCode != code) {
			alert("验证码输入错误！");
			createCode();
			flag = 0;
			return false;
		} else if (inputCode == code) {
			flag = 1;
			return true;
		}
	}

	function textareaCheck() {
		if (document.getElementById("content").value != "" && flag == 1) {
			return true;
		} else if (flag != 1) {
			return false;
		} else if (document.getElementById("content").value == "" && flag == 1) {
			alert("请输入评论内容！");
			return false;
		}
	}
</script>
