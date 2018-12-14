<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文古苑-首页</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/new.css" />
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-3.1.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/public.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/iframeShow.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css"/>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/SansuLogoico.ico" />
<style type="text/css">
a:link {
 color: #000000;
 text-decoration: none;
}
a:visited {

 color: #000000;
 text-decoration: none;
}
a:hover {
 color: rgb(255,103,0);
 text-decoration: underline;
}</style>
<!-- 百度回馈 -->
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?2aa27c88c87f1f9155a45cacffe72859";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<script type="text/javascript">
if (window!=top) // 判断当前的window对象是否是top对象
  top.location.href = window.location.href; // 如果不是，将top对象的网址自动导向被嵌入网页的网址
</script>
</head>
<body>
	<jsp:include page="/foreground/common/header1.jsp"></jsp:include>
	<script type="text/javascript">
		function setTabGG(name, cursel, n) {
			for (i = 1; i <= n; i++) {
				var menu = document.getElementById(name + i);
				var con = document.getElementById("lmu_" + name + "_" + i);
				menu.className = i == cursel ? "hover" : "";
				con.style.display = i == cursel ? "block" : "none";
			}
		}
		function setTabGG2(name, cursel, n) {
			for (i = 3; i <= n; i++) {
				var menu = document.getElementById(name + i);
				var con = document.getElementById("lmu_" + name + "_" + i);
				menu.className = i == cursel ? "hover" : "";
				con.style.display = i == cursel ? "block" : "none";
			}
		}
	</script>
	<div class="bady-content">
		<div class="bady-content-left">
			<!-- 新闻头部-->
			<div class="noticelm">
				<ul>
					<li id="lmua1" onmousemove="setTabGG('lmua',1,2)" class="hover">新闻公告</li>
					<li class="spanx"></li>
					<li id="lmua2" onmousemove="setTabGG('lmua',2,2)" class="">新闻头条</li>
				</ul>
				
			</div>
			<!--Tab1.1-->
			<div class="bady-content-bottom" id="lmu_lmua_1" style="display: block;">
				<div class="listmore">
					<a href="${pageContext.request.contextPath}/list/1.htm" target="_blank">更多详情</a>
				</div>
				<div class="mod-center">
					<div class="mod-center-left">
							<!--图片大小-->
							<A href="${pageContext.request.contextPath}/show/${imageNewsList1[0].newsId }.html" class="mod-center-left-a"> 
								<img src="${pageContext.request.contextPath}/${imageNewsList1[0].imageName }" width="245" height="200" alt="${imageNewsList1[0].title}">
							</A>
					</div>
					<div class="mod-center-right">
						<ul class="list-b">
						<c:forEach var="noticeNews" items="${noticeNewsList }"  begin= "0" end = "5">
						<li><a href="${pageContext.request.contextPath}/show/${noticeNews.newsId }.html" title="${noticeNews.title }">${fn:substring(noticeNews.title,0,15) }
						</a></li>
						</c:forEach>
						
						</ul>
					</div>
				</div>
				<!-- 新闻较长标题的无序列表--><%-- ${fn:substring(noticeNews.title,0,15) } --%>
				<div class="mod-bottom">
					<ul class="bd list-b uuul">
						<c:forEach var="noticeNews" items="${noticeNewsList }"  begin= "6" end = "9">
						<li><a href="${pageContext.request.contextPath}/show/${noticeNews.newsId }.html" title="${noticeNews.title }">${fn:substring(noticeNews.title,0,35) }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--Tab1.2-->
			<div class="bady-content-bottom" id="lmu_lmua_2" style="display: none;">
				<div class="listmore">
					<a href="${pageContext.request.contextPath}/list/2.htm" target="_blank">更多详情</a>
				</div>
				<div class="mod-center">
					<div class="mod-center-left">
						<A href="${pageContext.request.contextPath}/show/${imageNewsList2[0].newsId }.html" class="mod-center-left-a"> 
								<img src="${pageContext.request.contextPath}/${imageNewsList2[0].imageName }" width="245" height="200"  alt="${imageNewsList2[0].title}"/>
						</A>
					</div>
					<div class="mod-center-right">
						<ul class="list-b">
						<c:forEach var="hotSpotNews" items="${hotSpotNewsList }"  begin= "0" end = "5">
						<li><a href="${pageContext.request.contextPath}/show/${hotSpotNews.newsId }.html" title="${hotSpotNews.title }">${fn:substring(hotSpotNews.title,0,15) }</a></li>
						</c:forEach>
						</ul>
					</div>
				</div>
				<!-- 新闻较长标题的无序列表-->
				<div class="mod-bottom">
					<ul class="bd list-b uuul">
						<c:forEach var="hotSpotNews" items="${hotSpotNewsList }"  begin= "6" end = "9">
						<li><a href="${pageContext.request.contextPath}/show/${hotSpotNews.newsId }.html" title="${hotSpotNews.title }">${fn:substring(hotSpotNews.title,0,35) }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<!--右侧 经济、股市、财富 部分-->
		<div class="bady-content-right">
			<!-- 经济-->
			<div class="jingji">
				<span class="biaoyi"><a href="${pageContext.request.contextPath}/list/5.htm">经济</a></span>
				<ul class="bd list-b uuul">
					<c:forEach var="economyNews" items="${economyNewsList }">
						<li><a href="${pageContext.request.contextPath}/show/${economyNews.newsId }.html" title="${economyNews.title }">${fn:substring(economyNews.title,0,30) }</a></li>
					</c:forEach>
				</ul>
			</div>
			<!-- 股市-->
			<div class="gushi">
				<span class="biaoyi"><a href="${pageContext.request.contextPath}/list/6.htm">股市</a></span>
				<ul class="bd list-b uuul">
					<c:forEach var="stockNews" items="${stockNewsList }">
						<li><a href="${pageContext.request.contextPath}/show/${stockNews.newsId }.html" title="${stockNews.title }">${fn:substring(stockNews.title,0,30) }</a></li>
					</c:forEach>
				</ul>
			</div>
			<!-- 财富-->
			<div class="caifu">
				<span class="biaoyi"><a href="${pageContext.request.contextPath}/list/7.htm">财富</a></span>
				<ul class="bd list-b uuul">
					<c:forEach var="wealthNews" items="${wealthNewsList }">
						<li><a href="${pageContext.request.contextPath}/show/${wealthNews.newsId }.html" title="${wealthNews.title }">${fn:substring(wealthNews.title,0,30) }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!--广告部分-->
	<div class="bady-guanggao">
		<img border="0" src="img/heng.png" style="width: 1050px; height: 100px; border: 0">
	</div>
	
	
	
	<div class="bady-content">
		<div class="bady-content-left">
	
		
			<div class="noticelm">

				<ul>
					<li id="lmua3" onmousemove="setTabGG2('lmua',3,4)" class="hover">藏品信息</li>
					<li class="spanx"></li>
					<li id="lmua4" onmousemove="setTabGG2('lmua',4,4)" class="">珍贵古董</li>
				</ul>
			</div>

			<!--Tab2.1-->
			<div class="bady-content-bottom" id="lmu_lmua_3" style="display: block;">
				<div class="listmore">
					<a href="${pageContext.request.contextPath}/list/3.htm" target="_blank">更多详情</a>
				</div>
				<div class="mod-center">
					<div class="mod-center-left">
						<A href="${pageContext.request.contextPath}/show/${imageNewsList3[0].newsId }.html" class="mod-center-left-a"> 
								<img src="${pageContext.request.contextPath}/${imageNewsList3[0].imageName }" width="245" height="200"  alt="${imageNewsList3[0].title}">
						</A>
					</div>
					<!--图片右面部分的链接-->
					<div class="mod-center-right">
						<ul class="list-b">
						<c:forEach var="collectNews" items="${collectNewsList }"  begin= "0" end = "5">
						<li><a href="${pageContext.request.contextPath}/show/${collectNews.newsId }.html" title="${collectNews.title }">${fn:substring(collectNews.title,0,15) }</a></li>
						</c:forEach>
						</ul>
					</div>
				</div>
				<!-- 藏品较长标题的无序列表-->
				<div class="mod-bottom">
					<ul class="bd list-b uuul">
						<c:forEach var="collectNews" items="${collectNewsList }"  begin= "6" end = "9">
						<li><a href="${pageContext.request.contextPath}/show/${collectNews.newsId }.html" title="${collectNews.title }">${fn:substring(collectNews.title,0,35) }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!-- Tab2.2 -->
			<div class="bady-content-bottom" id="lmu_lmua_4" style="display: none;">
				<div class="listmore">
					<a href="${pageContext.request.contextPath}/list/4.htm" target="_blank">更多详情</a>
				</div>
				<div class="mod-center">
					<div class="mod-center-left">
						<A href="${pageContext.request.contextPath}/show/${imageNewsList4[0].newsId }.html" class="mod-center-left-a"> 
								<img src="${pageContext.request.contextPath}/${imageNewsList4[0].imageName }" width="245" height="200"  alt="${imageNewsList4[0].title}">
						</A>
					</div>
					<div class="mod-center-right">
						<ul class="list-b">
							<c:forEach var="antiqueNews" items="${antiqueNewsList }"  begin= "0" end = "5">
						<li><a href="${pageContext.request.contextPath}/show/${antiqueNews.newsId }.html" title="${antiqueNews.title }">${fn:substring(antiqueNews.title,0,15) }</a></li>
						</c:forEach>
						</ul>
					</div>
				</div>
				<!-- 新闻较长标题的无序列表-->
				<div class="mod-bottom">
					<ul class="bd list-b uuul">
						<c:forEach var="antiqueNews" items="${antiqueNewsList }"  begin= "6" end = "9">
						<li><a href="${pageContext.request.contextPath}/show/${antiqueNews.newsId }.html" title="${antiqueNews.title }">${fn:substring(antiqueNews.title,0,35) }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<!--右侧 字画、邮币、古玩部分-->
		<div class="bady-content-right">
			<!--字画-->
			<div class="jingji">
				<span class="biaoyi"><a href="${pageContext.request.contextPath}/list/8.htm">字画</a></span>
				<ul class="bd list-b uuul">
					<c:forEach var="paintingNews" items="${paintingNewsList }">
						<li>
						<a href="${pageContext.request.contextPath}/show/${paintingNews.newsId }.html" title="${paintingNews.title }">${fn:substring(paintingNews.title,0,30) }
							</a>
						</li>
						<%-- ${fn:substring(paintingNews.title,0,15) } --%>
						
					</c:forEach>
				</ul>
			</div>
			<!--邮币-->
			<div class="gushi">
				<span class="biaoyi"><a href="${pageContext.request.contextPath}/list/9.htm">邮币</a></span>
				<ul class="bd list-b uuul">
					<c:forEach var="postcardNews" items="${postcardNewsList }">
						<li><a href="${pageContext.request.contextPath}/show/${postcardNews.newsId }.html" title="${postcardNews.title }">${fn:substring(postcardNews.title,0,30) }</a></li>
					</c:forEach>
				</ul>
			</div>
			<!--古玩-->
			<div class="caifu">
				<span class="biaoyi"><a href="${pageContext.request.contextPath}/list/10.htm">古玩</a></span>
				<ul class="bd list-b uuul">
					<c:forEach var="curioNews" items="${curioNewsList }">
						<li><a href="${pageContext.request.contextPath}/show/${curioNews.newsId }.html" title="${curioNews.title }">${fn:substring(curioNews.title,0,30) }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="/foreground/common/footer.jsp"></jsp:include>
</body>
</html>