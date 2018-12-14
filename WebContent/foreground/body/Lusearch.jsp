<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>文古苑-检索中心</title>
<div class="s_search">
	<div class="search">&nbsp;&nbsp;全站搜索</div>
	<div class="s_serch_content">
		<div class="s_serch_content_result">
			搜索：[
			<span id="keywords">
				<c:choose>
					<c:when test="${searchText== null || fn:length(searchText) == 0}">
						<span>全站新闻</span>
					</c:when>
					<c:otherwise>
							${searchText }
						</c:otherwise>
				</c:choose>
			</span>
			] &nbsp;&nbsp; 搜索结果：&nbsp;
			<span id="result">${totalNum }</span>
			&nbsp; 条记录 &nbsp;&nbsp; 搜索耗时：&nbsp;
			<span id="result">${timeCost }</span>
			&nbsp; 秒
		</div>
		<div class="s_serch_content_info" style="height: auto;">
			<!--搜索内容显示-->
			<ul>
				<c:forEach var="searchNews" items="${searchNewsListWithType }">
					<li>
						<span class="list_title">
							<a href="${pageContext.request.contextPath}/show/${searchNews.newsId }.html" title="${searchNews.title }" target="_blank" class="zxtitle">${searchNews.title }</a>
							<p>${searchNews.content }</p>
						</span>
						<span class="lifoot">
							<span class="litime">
								作者： <font style="font-size: 13px;">${searchNews.author }&nbsp;&nbsp;&nbsp;&nbsp;</font> 时间： <font style="font-size: 13px;"><fmt:formatDate
										value="${searchNews.publishDate }" type="date" pattern="YYYY-MM-dd" /></font>
							</span>
						</span>
					</li>
				</c:forEach>
			</ul>
			<div style="text-align: center;">
				<ul class="pagination">${pageCode }
				</ul>
			</div>
		</div>
	</div>
</div>
