<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<div class="linkwrap">
        	<div>
        		<img src="${pageContext.request.contextPath}/img/site-title-4.png">
        	</div>
        	<div class="site-links">
	            <ul>
					<c:forEach var="link" items="${linkList }" varStatus="oneStatus">
					
						<li><a href="${link.linkUrl }" target="_blank">${link.linkName }</a></li>
					<c:choose>
						<c:when test="${oneStatus.last }">
							<li></li>
   						</c:when>
						<c:otherwise>
							<li>|</li>
  						</c:otherwise>
					</c:choose>
			</c:forEach>	                
            	</ul>
        	</div>
    	</div>
		
		<div class="wrap">
	        <div>
				<img src="${pageContext.request.contextPath}/img/kuaijieLINK.png">
				<img src="${pageContext.request.contextPath}/img/kuaishufangwen.jpg" alt="" width="1000" height="60" usemap="#Map1">
				<map name="Map1">
				  	<area shape="rect" coords="1,-1,125,61" href="http://www.people.com.cn/" target="_blank">
				  	<area shape="rect" coords="126,2,236,61" href="http://www.xinhuanet.com/" target="_blank">
				  	<area shape="rect" coords="237,-2,358,62" href="http://www.baidu.com" target="_blank">
				  	<area shape="rect" coords="358,0,490,64" href="http://www.sina.com.cn/" target="_blank">
				  	<area shape="rect" coords="492,0,621,64" href="http://www.163.com/" target="_blank">
				  	<area shape="rect" coords="620,4,744,60" href="http://www.sohu.com/" target="_blank">
				  	<area shape="rect" coords="748,5,870,60" href="http://www.qq.com/" target="_blank">
				  <area shape="rect" coords="875,5,1004,61" href="http://www.eastmoney.com/" target="_blank">
				</map>
			</div>
		</div>
		<div class="site-red-lace"></div>
		<div class="footer">
			<div class="wrap"> 
				<div class="footnav">
			        <span><a href="#">关于我们</a></span>|
			        <span><a href="#">商务合作</a></span>|
				 	<span><a href="#">战略伙伴</a></span>|
			     	<span><a href="#">免责声明</a></span>|
					<span><a href="#">留言反馈</a></span>
			    </div>
			    <div class="contact">
					<span>服务热线：4008-000-000</span>
	     			<span>QQ客服：1978801258&nbsp;&nbsp;266666666</span>
	     			<span>邮箱：admin@163.com</span>
	    			<span>商务合作：18500000000 </span>
				</div>
				<div class="copyright">
			     	<span>Copyright 2015 </span>
			     	<span>竭力提供准确可靠、全面、专业、权威的资讯，欢迎转载。</span>
			     	<span>京ICP备15012815号</span>
			     	<span><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1255086162'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/q_stat.php%3Fid%3D1255086162%26l%3D2' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1255086162"><a href="http://quanjing.cnzz.com" target="_blank" title="全景统计"><img border="0" hspace="0" vspace="0" src="http://icon.cnzz.com/img/2.gif"></a></span><script src=" http://w.cnzz.com/q_stat.php?id=1255086162&amp;l=2" type="text/javascript"></script><script src="http://c.cnzz.com/core.php?web_id=1255086162&amp;l=2&amp;t=q" charset="utf-8" type="text/javascript"></script></span>
			  </div> 
			  <!-- <div class="certificate">
			     	<span><a href="#"><img src="http://www.ybk58.com/templets/default/style/foot_icpbei.png"></a></span>
			     	<span><a href="#"><img src="http://www.ybk58.com/templets/default/style/foot_wljc.png"></a></span>
			     	<span><a href="#"><img src="http://www.ybk58.com/templets/default/style/foot_cnnic.png"></a></span>	 
			     	<span><a href="#"><img src="http://www.ybk58.com/templets/default/style/foot_icei.png"></a></span>	 
			    </div> -->
			</div>
		</div>

