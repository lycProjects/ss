<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>文古苑-新闻列表</title>
<div id="s-market-body">
	<!--页面小导航-->
	<div class="s-market-head">
		<ol class="breadcrumb changeol">
			${navCode }
		</ol>
	</div> 
	<!--页面内容-->
	<div class="s-market-content" >
		<ul class="bd list-b changeul">
			<!--小标题超链接最好35个字-->
			<c:forEach var="newestNewsWithType" items="${newestNewsListWithType }"  begin= "0" end = "7">
						<li><a href="${pageContext.request.contextPath}/show/${newestNewsWithType.newsId }.html" title="${newestNewsWithType.title }">[<fmt:formatDate value="${newestNewsWithType.publishDate }" type="date" pattern="YYYY-MM-dd"/>]&nbsp;&nbsp;${fn:substring(newestNewsWithType.title,0,28) }
						</a></li>
						</c:forEach>
			<c:forEach var="newestNewsWithType" items="${newestNewsListWithType }"  begin= "8" end = "15"><!-- 16条记录 -->
						
						<li><a href="${pageContext.request.contextPath}/show/${newestNewsWithType.newsId }.html" title="${newestNewsWithType.title }">[<fmt:formatDate value="${newestNewsWithType.publishDate }" type="date" pattern="YYYY-MM-dd"/>]&nbsp;&nbsp;${newestNewsWithType.title }
						</a></li>
						</c:forEach>
		</ul>
		<!--轮播图-->
 		<div class="s-market-top-right">
			<div id="carousel-example-generic1" class="carousel slide" data-ride="carousel" data-interval="4500">
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<!-- 图片1-->

					<c:forEach var="imageNews" items="${imageNewsList}" varStatus="oneStatus">
					<c:choose>
					   <c:when test="${oneStatus.first}">  
					    	<div class="item active">
			<%-- 		    	<c:if test="${id}==3 "}>
					    			<A href="${pageContext.request.contextPath}/show/.html"> 
					    	</c:if>
					    	<c:out value="${id }"></c:out> --%>
					    	<A href="${pageContext.request.contextPath}/show/${imageNews.newsId + 1}.html"> 
							<img src="${pageContext.request.contextPath}/${imageNews.imageName }" style="width: 450px; height: 300px" alt="${imageNews.title}">
							</A>
							<div class="carousel-caption"  style="background: rgba(0,0,0,0.5);">
							<a href="${pageContext.request.contextPath}/show/${imageNews.newsId }.html">${fn:substring(imageNews.title,0,30) }</a>
							</div>
							</div>
					   </c:when>
					   <c:otherwise> 
					   	<div class="item">
						<A href="${pageContext.request.contextPath}/show/${imageNews.newsId }.html"> 
							<img src="${pageContext.request.contextPath}/${imageNews.imageName }" style="width: 450px; height: 300px" alt="${imageNews.title}">
						</A>
						<div class="carousel-caption" style="background: rgba(0,0,0,0.5);">
							<a href="${pageContext.request.contextPath}/show/${imageNews.newsId }.html">${imageNews.title}</a>
						</div>
						</div>
					   </c:otherwise>
					</c:choose>
			
					</c:forEach>
					
				</div>
				<a class="left carousel-control" href="#carousel-example-generic1" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#carousel-example-generic1" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div style="position:absolute;left: 42.5%;bottom:10px">
			${pageCode }
		</div>
	</div>
</div>