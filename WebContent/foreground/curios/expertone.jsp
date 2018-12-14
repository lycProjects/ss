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
	    
	    <!-- 专家页面 -->
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
								
								    <li ><a href="${pageContext.request.contextPath}/expertone.html">鉴定专家</a></li>
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
									<li ><a href="/byweizhan/">全球竞宝</a></li>
									<li ><a href="/lianxi/">联系我们</a></li>
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
	<div class="right" style="width: 770px;">
 
	<div class="s-market-content" style="width: 770px;height: 1500px;float: right;">
			<div class="gbox gbox-s3">
				<div class="gbox-header"  style="margin-top:12px"><div class="mininav">当前位置：<a href="/">首页</a>&nbsp;>&nbsp;<a href="${pageContext.request.contextPath}/curio/curiotoy.html">藏品古玩</a>&nbsp;>&nbsp;<a href="${pageContext.request.contextPath}/curio/expertone.html">鉴定专家</a></div></div>
				<div class="gbox-con">
 					
                    <div class="content">
						<h1>梅国建</h1>
						<div class="page-intro">							
                                                                           作者：tgroup团队&nbsp;&nbsp;&nbsp;
                           	     浏览次数：6605&nbsp;&nbsp;&nbsp;&nbsp;
                        	     发布时间：2018-06-17					
						</div><br />
						<div class="page-content" style="font-size: 20px;">
			
								<div style="text-align: center;">
									<img alt="" src="${pageContext.request.contextPath}/img/20180617.jpg" style="width: 550px; height: 600px;" /><br />
				                </div>
				                <br /><br />
				                &nbsp; &nbsp; 梅国建，1953年4月出生，河南登封人，中国陶瓷设计艺术大师，中华陶瓷大师联盟副主席，唐代鲁山花瓷非物质文化遗产传承人。现任平顶山学院陶瓷学院院长，全面主持学院的教学、科研及其他行政管理工作。  <br /><br />
				                &nbsp; &nbsp; 1979年，毕业于河南医科大学；<br /><br />
				                &nbsp; &nbsp; 2000年，被任命为平顶山卫校校长；<br /><br />             	                                   
				                &nbsp; &nbsp; 2004年7月，被中国钧瓷文化艺术研究会选为常务理事；<br /><br /> 
				                &nbsp; &nbsp; 2006年6月，被河南省陶瓷艺术大师评审委员会评为“陶瓷艺术大师”；<br /><br />
				                &nbsp; &nbsp; 2008年12月，被河南省中小企业服务局评为“河南省工艺美术大师”；<br /><br />
				                &nbsp; &nbsp; 2009年，成功复原失传千年的鲁山花瓷，填补了我国陶瓷研究制作领域的空白，被业内誉为“当代鲁山花瓷第一人”；<br /><br />
				                &nbsp; &nbsp; 2010年，任平顶山学院陶瓷研究所所长；<br /><br />
				                &nbsp; &nbsp; 2011年，被评为中国陶瓷设计艺术大师；<br /><br />
				                &nbsp; &nbsp; 2016年至今，任平顶山学院陶瓷学院院长，全面主持学院的教学、科研及其他行政管理工作；<br /><br />
						
						</div><!-- end content -->

						<div class="prenext">
							<p><a href="${pageContext.request.contextPath}/curio/curiotoy.html">返回</a></p>	
						</div>
					</div>
				</div><!-- end gbox -->
			</div>
		<!-- end right -->

	<div class="clearfix"></div>

	</div>
	</div>






<script>(function() {var _53code = document.createElement("script");_53code.src = "https://tb.53kf.com/code/code/10175957/1";var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(_53code, s);})();</script>

<script src="/e/public/onclick/?enews=donews&classid=8&id=100"></script>
						

							
									
									
								