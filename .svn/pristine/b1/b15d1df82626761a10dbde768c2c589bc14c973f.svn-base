<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>文古苑-检索中心</title>
	<div class="s_search">
		<div class="search">&nbsp;&nbsp;检索中心</div>
		<div class="s_serch_content">
			<div class="searchblock1" >
				<div style="background-image:url(/Sansu/img/searchBack0.jpg);background-position:center; background-repeat:no-repeat;background-size:cover;height: 156px">
				<form action="${pageContext.request.contextPath}/search" method="post" onsubmit="return checkForm()" style="margin-left: 210px;">
				<div style="padding-top: 54px">
					<select id="searchId" name="searchId" class="searchSelect">
						<option value="1">==按标题检索==</option>
						<option value="2">==按内容检索==</option>
					</select>
					<input type="text" name="searchText" id="searchText" class="searchInput" placeholder="搜索内容" />
					<button type="submit" class="mybutton51" style="float: inherit;">搜&nbsp;索</button>
					&nbsp;&nbsp;<font id="error" color="red">${error }</font>
				</div>
				</form>
				</div>
			</div>
			<div style="border: solid 1px #dcdcdc;">
				<div class="s_serch_content_result">
					搜索：[
					<span id="keywords">
					<c:choose>
						<c:when test="${searchText== null || fn:length(searchText) == 0}"><span>全站新闻</span></c:when>
						<c:otherwise>
							${searchText }
						</c:otherwise>
					</c:choose>
					</span>
					] &nbsp;&nbsp; 搜索结果：&nbsp;
					<span id="result">${totalNum }</span>
					&nbsp; 条记录
				</div>
				<p class="searchp"></p>
				<!--搜索的内容-->
				<div>
					<!--搜索内容显示-->
					<ul class="bd list-b" style="margin-left: 27px;">
						<!--小标题超链接最好35个字-->
						<c:forEach var="searchNews" items="${searchNewsListWithType }">
							<li>
								<a href="${pageContext.request.contextPath}/show/${searchNews.newsId }.html" title="${searchNews.title }">[<fmt:formatDate value="${searchNews.publishDate }" type="date" pattern="YYYY-MM-dd"/>]&nbsp;&nbsp;${searchNews.title }
								</a>
							</li>
						</c:forEach>
					</ul>
					<div style="text-align: center;">
				  		 <ul class="pagination">
				  			${pageCode }
				  		</ul>
				  	</div>
				</div>
			</div>
		</div>
	</div>
