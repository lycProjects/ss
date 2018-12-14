<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.Sansu.model.Curio" %>
   <%  Curio curio=(Curio)request.getAttribute("curio"); %>
<!-- 新闻Application框架页 -->
<div class="container"  >
<title>文古苑-藏品信息</title>
	<div id="s-market-body"  style="margin-left:30px">
		
	<!--页面小导航-->
		<div class="s-market-head">
			<ol class="breadcrumb changeol">
				当前位置：&nbsp;&nbsp;<a href='/Sansu/goIndex'><font color='#FF6700'>主页</font></a>&nbsp;&nbsp;>&nbsp;&nbsp;<a href='/Sansu/list/3.htm'><font color='#FF6700'>藏品信息</font></a>
			</ol>
		</div> 
	<!--页面内容-->
	
	  <!--  左匡部分-->
	    
	    
	    <div id="st-main" class="st-innerpage">
			<div class="st-w">
				<div class="left">
				    <div class="s-market-content" style="width: 260px;height: 1100px;float: left;">
	                <input type="hidden" id="left-classid" value="8">
						<div class="gbox gbox-s3 left-nav" >
							<div class="gbox-header"><h2>栏目导航</h2></div>
							<div class="gbox-con">
								<ul id="side-catelist" class="catelist">
									<li ><a href="${pageContext.request.contextPath}/business/ourTeam.html">关于我们</a></li>
									<li ><a href="${pageContext.request.contextPath}/list/1.htm" class="adrop ">新闻动态</a>
			                    <div>					
									<ul>
										<li ><a href="${pageContext.request.contextPath}/list/7.htm" >行业新闻</a></li>
										<li ><a href="#" >公司活动</a></li>
										<li ><a href="${pageContext.request.contextPath}/curio/curiotoy.html" >藏品推荐</a></li>
										<li ><a href="#" >活动掠影</a></li>						
									</ul>
		                    </div>
						         </li>
						<li ><a href="${pageContext.request.contextPath}/curio/expertone.html">鉴定专家</a></li>
						<li  class="on"><a href="javascript:;" class="adrop  adrop-on">精品推荐</a>
							<div  style="display:block">					
								<ul>
										<li><a href="${pageContext.request.contextPath}/curio/curiotoy.html">瓷器欣赏</a></li>
										<li><a href="${pageContext.request.contextPath}/curio/jade.html">玉器欣赏</a></li>
										<li><a href="${pageContext.request.contextPath}/curio/paint.html">字画欣赏</a></li>
										<li><a href="${pageContext.request.contextPath}/curio/othercurio.html">杂项欣赏</a></li>
								</ul>
							</div>
						</li>
						
						<li ><a href="https://www16.53kf.com/webCompany.php?arg=10175957&style=1&language=zh-cn&charset=&kflist=off&kf=&zdkf_type=1&lnk_overflow=0&referer=http%3A%2F%2F127.0.0.1%3A8020%2F%25E6%2596%2587%25E5%258F%25A4%25E8%258B%2591%25E8%2582%25A1%25E5%25B8%2582%25E9%25A3%258E%25E4%25BA%259122%2520(1)%2Fdetails.html%3F__hbt%3D1529029096641&keyword=&tfrom=1&tpl=crystal_blue&uid=0bb7355440adc73331d2eba78d992e56&is_group=&is_group=&timeStamp=1529029214117&ucust_id=">谈古论今</a></li>
						<li ><a href="#">全球竞宝</a></li>
						<li ><a href="${pageContext.request.contextPath}/business/ourTeam.html">联系我们</a></li>

					</ul>


				</div>
			</div><!-- end left-nav -->


                
			<div class="gbox gbox-s3 left-related">
				<div class="gbox-header"><h2>相关信息</h2></div>
				<div class="gbox-con">
				<ul class="left-newslist">
				 
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610001.html">&bull;&nbsp;鸡缸杯</a></li>
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610002.html">&bull;&nbsp;青花狮子戏球脉枕</a></li>
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610003.html">&bull;&nbsp;汝窑笔洗</a></li>
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610004.html">&bull;&nbsp;青花碗</a></li>
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610005.html">&bull;&nbsp;斗彩海马纹玉壶春瓶</a></li>
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610006.html">&bull;&nbsp;粉彩八仙过海人物故事天球甁</a></li>
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610007.html">&bull;&nbsp;青花鱼纹高足杯</a></li>
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610008.html">&bull;&nbsp;蓝地粉彩喜上眉梢赏瓶</a></li>
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610009.html">&bull;&nbsp;胭脂红瓷器</a></li>
				 
						<li><a href="${pageContext.request.contextPath}/curioshow/20180610010.html">&bull;&nbsp;鹤纹青花人物故事碟</a></li>
					
				
				</ul>
				</div>
			</div><!-- end left-related -->
         
            <br>
			<div class="gbox gbox-s3 left-contact">
				<div class="gbox-header"><img src="${pageContext.request.contextPath}/images/388.png"></div>
				<div class="gbox-con"style="margin-top: 10px;">
					<p>
						三苏文化传媒有限公司 <br>
						电话：666666666666<br>
						邮箱：gzboyuchuanmei@163.com<br>
						网址：wolve.tgroup.club <br>
						地址： 河南省平顶山市三苏文化传媒有限公司<br>
					</p>
				</div>
			</div><!-- end left-nav -->


		</div>
	</div>
		<!-- end left -->


		<!-- start right -->
		<div class="right" style="width: 70px;margin-right: 110px;">
 
	<div class="s-market-content" style="width: 770px;height: 2000px;float: right;">
			<div class="gbox gbox-s3">
				<div class="gbox-header"   style="margin-top:12px"><div class="mininav">当前位置：<a href="/">首页</a>&nbsp;>&nbsp;<a href="${pageContext.request.contextPath}/curio/curiotoy.html">藏品古玩</a>&nbsp;>&nbsp;&nbsp;>&nbsp;<a href="${pageContext.request.contextPath}/curio/curiotoy.html">瓷器欣赏</a></div></div>
				<div class="gbox-con">
 					
 
 
 <div class="proinfo">
					<div class="pro-img">
						<ul id="piclist">
						       <li id="bigimg-li"><img src="${pageContext.request.contextPath}/img/<%=curio.getImageName() %>.jpg" data-zoom-image="${pageContext.request.contextPath}/img/<%=curio.getImageName() %>.jpg"></li>
						</ul>
						<ul id="thumblist"> 
								<li><a href="javascript:;"><img src="${pageContext.request.contextPath}/img/<%=curio.getImageName() %>.jpg"  src_D="${pageContext.request.contextPath}/img/<%=curio.getImageName() %>.jpg" alt=""></a></li>
								
								<li><a href="javascript:;"><img src="${pageContext.request.contextPath}/img/<%=curio.getImageNamea() %>.jpg" src_H="${pageContext.request.contextPath}/img/<%=curio.getImageNamea() %>.jpg" src_D="${pageContext.request.contextPath}/img/<%=curio.getImageNamea() %>.jpg" alt=""></a></li>
								
								<li><a href="javascript:;"><img src="${pageContext.request.contextPath}/img/<%=curio.getImageNameb() %>.jpg" src_H="${pageContext.request.contextPath}/img/<%=curio.getImageNameb() %>.jpg" src_D="${pageContext.request.contextPath}/img/<%=curio.getImageNameb() %>.jpg" alt=""></a></li> 
								
								<li><a href="javascript:;"><img src="${pageContext.request.contextPath}/img/<%=curio.getImageNamec() %>.jpg" src_H="${pageContext.request.contextPath}/img/<%=curio.getImageNameb() %>.jpg" src_D="${pageContext.request.contextPath}/img/<%=curio.getImageNameb() %>.jpg" alt=""></a></li> 
					    </ul>
					</div>
					<div class="pro-intro">
						<h1><%=curio.getCurName() %></h1><br/>
						<dl>
							<dt>热度：<%=curio.getCurHot() %></dt>
							<dd>藏品名称：<%=curio.getCurName() %><br />
								参考价格：<%=curio.getPrice() %><br />
								藏品编号：<%=curio.getCurNum() %><br />
								藏品规格：<%=curio.getModel() %><br />
								藏品款识：<%=curio.getCurYear() %><br />
								藏品类别：<%=curio.getCurType() %>
							</dd>
						</dl>
					</div>
				</div>
				</div>
			</div><!-- end gbox -->
 

 			<div class="gbox gbox-s3 related">
				<div class="gbox-header gh-pos"><h3>详细</h3></div>
				<div class="gbox-con">
					<div class="procontent">
						<p class="img-item"><img src="${pageContext.request.contextPath}/img/<%=curio.getImageName() %>.jpg" alt=""></p>
						<p class="img-item"><img src="${pageContext.request.contextPath}/img/<%=curio.getImageNamea() %>.jpg" alt=""></p>
						<p class="img-item"><img src="${pageContext.request.contextPath}/img/<%=curio.getImageNameb() %>.jpg" alt=""></p> 
						<p class="img-item"><img src="${pageContext.request.contextPath}/img/<%=curio.getImageNamec() %>.jpg" alt=""></p> 
						<br />
						<div class="prenext">
						<!-- 	<p>上一篇：<a href='/jptj/ciqi/2018-06-08/97.html'>青花狮子戏球脉枕</a></p>
							<p>上一篇：<a href='/jptj/ciqi/'>返回列表</a></p> -->
							<p><a href="${pageContext.request.contextPath}/curio/curiotoy.html">返回</a></p>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- end right -->

<!-- 	<div class="clearfix"></div> -->


	</div>
</div>





<script>(function() {var _53code = document.createElement("script");_53code.src = "https://tb.53kf.com/code/code/10175957/1";var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(_53code, s);})();</script>

<script src="/e/public/onclick/?enews=donews&classid=8&id=100"></script>
	    
	    
	    