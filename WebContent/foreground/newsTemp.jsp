<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/search.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/g.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/debug.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/im.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/iframeShow.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/gundong.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/LunBimg.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sansu.css"/>
<link href="${pageContext.request.contextPath}/css/public.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/iframe.css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/SansuLogoico.ico" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css"/>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/market.css" />
<script src="${pageContext.request.contextPath}/js/jquery-3.1.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/table_td.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=67jMQ5DmYTe1TLMBKFUTcZAR"></script>
<script src="${pageContext.request.contextPath}/js/app.js"></script>
<script src="${pageContext.request.contextPath}/js/LunBimg.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.elevateZoom-3.0.8.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
<script src="${pageContext.request.contextPath}/js/jqueryjquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/lazyload.js"></script>
<script src="${pageContext.request.contextPath}/js/Plugins.js"></script>
<script src="${pageContext.request.contextPath}/js/TNTools.js"></script>
<script src="${pageContext.request.contextPath}/js/wendyslide.0.4.js"></script>
<style>
.s-market-top-right .carousel-caption {
	position: absolute;
    bottom: 0;
    left: 0;
    background: rgba(0,0,0,0.75);
    width: 450px;
    height: 0px;
    line-height: 12px;
}
</style>
</head>
<body>
<jsp:include page="/foreground/common/header.jsp"/>
<!-- 新闻Application框架页 -->
<div class="container">
<%-- 
<div class="row-fluid">
	<div class="span8">
		<jsp:include page="${mainPage }"/>
	</div>
	<div class="span4">
		<div class="data_list right_news_list">
			<div class="dataHeader">最新新闻</div>
			<div class="datas">
				<ul>
					<c:forEach var="newestNews" items="${newestNewsList }">
						<li><a href="news?action=show&newsId=${newestNews.newsId }" title="${newestNews.title }">${fn:substring(newestNews.title,0,22) }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="data_list right_news_list">
			<div class="dataHeader">热门新闻</div>
			<div class="datas">
				<ul>
					<c:forEach var="hotNews" items="${hotNewsList }">
						<li><a href="news?action=show&newsId=${hotNews.newsId }" title="${hotNews.title }">${fn:substring(hotNews.title,0,22) }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div> --%>
<jsp:include page="${mainPage}"/>
</div>
<jsp:include page="/foreground/common/footer.jsp"/>


</body>
</html>