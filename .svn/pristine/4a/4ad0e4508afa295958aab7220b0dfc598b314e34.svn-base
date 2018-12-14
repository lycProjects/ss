<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>文古苑-新闻列表</title>
<div id="s-market-body">
	<div class="s-market-head">
		<ol class="breadcrumb changeol">
			当前位置：&nbsp;&nbsp;<a href='/Sansu/goIndex'><font color='#FF6700'>主页</font></a>&nbsp;&nbsp;>&nbsp;&nbsp;<a href='/Sansu/list/3.htm'><font color='#FF6700'>新闻公告</font></a>
		</ol>
	</div> 
	<!--  左匡部分-->
	    <div style="float: left;">
			<div class="s-market-content" style="width: 700px;height: 1150px;">
				<br>
			<c:forEach var="newestNewsWithType"  items="${newestNewsListWithType }"  begin= "0" end = "4"> 
				<div class="news-list-item" style="margin-top: 10px;margin-left: 10px;margin-right: 10px;height:180px;">
						<div style="float: left;">
						    	<A href="${pageContext.request.contextPath}/show/${newestNewsWithType.newsId }.html"> 
									<img src="${pageContext.request.contextPath}/${newestNewsWithType.imageName }" style="width: 290px; height: 170px" >
								</A><br />
						</div>
						<div style="float: right;width: 350px;">
							       <li style="list-style-type:none;font-size:20px;"><a href="${pageContext.request.contextPath}/show/${newestNewsWithType.newsId}.html" title="${newestNewsWithType.title }">[<fmt:formatDate value="${newestNewsWithType.publishDate }" type="date" pattern="YYYY-MM-dd"/>]&nbsp;&nbsp;${fn:substring(newestNewsWithType.title,0,20) }......
									</a></li>
									<p style="font-size:16px;"href="${pageContext.request.contextPath}/show/${newestNewsWithType.newsId}.html" >&nbsp;&nbsp;${fn:substring(newestNewsWithType.content,0,70) }......
									</p><br />
						</div>
				</div><br />
				</c:forEach>
				
				<div style="position:absolute;left: 42.5%;bottom:10px">
						${pageCode }
				</div>
				
		    </div>	
	    </div>
	    
	    
	  <!--  右框部分-->
	    <div style="float: right;">
		    <div class="s-market-content" style="width: 330px;height: 1150px;">
				<div class="search-bar" style="font-size: 22px;margin-left: 18px;margin-top: 30px;">
					<input type="search" style="width: 225px;height:32px;border-radius:6px;border:1px solid #FF6700"/>     &nbsp;  <button style="background-color:rgba(0,0,0,0.02);border-radius:5px;border:1px solid yellow;width:50px;">搜索</button> 
				</div><br />
					<!--轮播图-->
 		<div >
			<div id="carousel-example-generic1" class="carousel slide" data-ride="carousel" data-interval="4500" style="float:center;width:290px;height:200px;margin-left:18px">
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox"  style="float:center;width:290px;height；200px ">
					<!-- 图片1-->

					<c:forEach var="imageNews" items="${imageNewsList}" varStatus="oneStatus">
					<c:choose>
					   <c:when test="${oneStatus.first}">  
					    	<div class="item active">

					    	<A href="${pageContext.request.contextPath}/show/${imageNews.newsId + 1}.html"> 
							<img src="${pageContext.request.contextPath}/${imageNews.imageName }" style="width: 290px; height: 200px" alt="${imageNews.title}">
							</A>
						<%-- 	<div class="carousel-caption"  style="background: rgba(0,0,0,0);">
							<a href="${pageContext.request.contextPath}/show/${imageNews.newsId }.html">${fn:substring(imageNews.title,0,30) }</a>
							</div> --%>
							</div>
					   </c:when>
					   <c:otherwise> 
					   	<div class="item">
						<A href="${pageContext.request.contextPath}/show/${imageNews.newsId }.html"> 
							<img src="${pageContext.request.contextPath}/${imageNews.imageName }" style="width: 290px; height: 200px" alt="${imageNews.title}">
						</A>
					<%-- 	<div class="carousel-caption" style="background: rgba(0,0,0,0);">
							<a href="${pageContext.request.contextPath}/show/${imageNews.newsId }.html">${imageNews.title}</a>
						</div> --%>
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
				
				<div class="side-bar-card">
					<div class="card-title" style="font-size:28px;margin-left: 20px;margin-top: 12px;">新闻公告</div>
					<div class="card-body" style="font-size:16px;margin-left: 20px;margin-top: 10px;">
						<div class="list">
							<c:forEach var="newestNewsWithType" items="${newestNewsListWithType }"  begin= "0" end = "7"> 
								<div class="item" style="width:280px;list-style-type:none" >
										<li><a href="${pageContext.request.contextPath}/show/${newestNewsWithType.newsId }.html" title="${newestNewsWithType.title }">[<fmt:formatDate value="${newestNewsWithType.publishDate }" type="date" pattern="YYYY-MM-dd"/>]&nbsp;&nbsp;${fn:substring(newestNewsWithType.title,0,28) }
										</a></li>
										<br>
								</div>
							</c:forEach>
						</div>
					</div>
					</div>
				
		    </div>
		    
		</div>
</div>
