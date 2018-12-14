<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>文古苑-名品赏析</title>
<!-- 新闻Application框架页 -->
<div class="container">
   <div id="s-market-body" style="margin-left:30px" >
	<!--页面小导航-->
		<div class="s-market-head">
			<ol class="breadcrumb changeol">
				当前位置：&nbsp;&nbsp;<a href='/Sansu/goIndex'><font color='#FF6700'>主页</font></a>&nbsp;&nbsp;>&nbsp;&nbsp;<a href='/Sansu/list/3.htm'><font color='#FF6700'>名品赏析</font></a>
			</ol>
		</div> 
		
	<!--页面内容-->	
	    <div class="middal" style="float: left;">
			<div class="s-market-content" style="width:1050px;height: 1200px;">
				<div class="ihuodong hdstyle-2 x">
				<div class="st-w">
					<div class="hd" style="margin-left: 150px;">
						<span></span>
						<strong>PHOTOS</strong>
					</div>
					<div class="hd-tip">
						<p style="color: #FF7E00;margin-left: 420px;">
							<strong>名品赏析</strong>
						</p>			
					</div>
					<div id="wendyslide-1" class="wendyslide" >
						<div id="indemo">
							<div id="demo1">
								<ul class="plist plist-nobd plist-block-list ihuodong-list">
								 	<li>
								 		<div class="p-1"><a href="${pageContext.request.contextPath}/show/225.html">
								 			<img src="${pageContext.request.contextPath}/img/20180714023.jpg" alt=""></a></div>
								 		<div class="p-2">
								 			<h3><a href="shanghetu.html">清明上河图</a></h3>
											<p>北宋风俗画作品</p>
								 		</div>
								 	</li> 
								 	<li>
								 		<div class="p-1"><a href="${pageContext.request.contextPath}/show/226.html"><img src="${pageContext.request.contextPath}/img/20180714024.jpg" alt=""></a></div>
								 		<div class="p-2">
								 			<h3><a href="simuwu.html">司母戊鼎</a></h3>
											<p>中国商代晚期的青铜器</p>
								 		</div>
								 	</li> 
								 	<li>
								 		<div class="p-1"><a href="${pageContext.request.contextPath}/show/227.html"><img src="${pageContext.request.contextPath}/img/20180714025.jpg" alt=""></a></div>
								 		<div class="p-2">
								 			<h3><a href="fangzun.html">四羊方尊</a></h3>
											<p>最大的方尊</p>
								 		</div>
								 	</li> 
								 	<li>
								 		<div class="p-1"><a href="${pageContext.request.contextPath}/show/228.html"><img src="${pageContext.request.contextPath}/img/20180714026.jpg" alt=""></a></div>
								 		<div class="p-2">
								 			<h3><a href="yuyi.html">金缕玉衣</a></h3>
											<p>出土于中国汉代</p>
								 		</div>
								 	</li> 
								 	<li>
								 		<div class="p-1"><a href="${pageContext.request.contextPath}/show/229.html"><img src="${pageContext.request.contextPath}/img/20180714028.jpg" alt=""></a></div>
								 		<div class="p-2">
								 			<h3><a href="shengxiaoshou.html">十二生肖兽</a></h3>
											<p>清乾隆年间的红铜铸像</p>
								 		</div>
								 	</li> 
								 	<li>
								 		<div class="p-1"><a href="${pageContext.request.contextPath}/show/230.html"><img src="${pageContext.request.contextPath}/img/20180714027.jpg" alt=""></a></div>
								 		<div class="p-2">
								 			<h3><a href="baicai.html">翠玉白菜</a></h3>
											<p>寓意多子多孙</p>
								 		</div>
								 	</li> 
								</ul>
							</div>
							<div id="demo2"></div>
						</div>
					</div>
					<script>
						var speed=10;
						var tab=document.getElementById("wendyslide-1");
						var tab1=document.getElementById("demo1");
						var tab2=document.getElementById("demo2");
						tab2.innerHTML=tab1.innerHTML;
						function Marquee(){
						if(tab2.offsetWidth-tab.scrollLeft<=0)
						tab.scrollLeft-=tab1.offsetWidth
						else{
						tab.scrollLeft++;
						}
						}
						var MyMar=setInterval(Marquee,speed);
						tab.onmouseover=function() {clearInterval(MyMar)};
						tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
					</script>
				</div>
			    </div>
				<!--新闻-->
				<div class="inews x hdstyle-1">
					<div class="st-w">
						<div class="hd">
							<span><img src="${pageContext.request.contextPath}/img/20180714020.jpg" alt=""></span>
						</div>
							<div class="ntemp">
							<div class="ntemp-w">
								<div class="nhd"><strong><a href="#">行业新闻</a></strong> </div>
								<ul>
									<li class="inews-pic">
										<a href="${pageContext.request.contextPath}/curioshow/20180610007.html">
												<img src="${pageContext.request.contextPath}/img/20180610007.jpg" alt=""></a>
										<p class="tjtitle"><a href="${pageContext.request.contextPath}/show/126.html">
																&bull;&nbsp;[07-05] 安贵2016S048《珍惜矿产资源》商品申购公告</a></p>
									</li>
									<li><a href="${pageContext.request.contextPath}/show/128.html">
																&bull;&nbsp;[07-05] 关于《普31褐头凤鹛》等商品申购的公告</a></li>
									<li><a href="${pageContext.request.contextPath}/show/129.html">
																&bull;&nbsp;[06-17] 关于《红色官窑•湘之润》的托管公告</a></li>
									<li><a href="${pageContext.request.contextPath}/show/209.html">
																&bull;&nbsp;[06-13] 海西重出江湖，直接甩出“看家底”</a></li>
									<li><a href="${pageContext.request.contextPath}/show/160.html">
																&bull;&nbsp;[06-10] 还原辽宁钞车劫案嫌犯人生路：劫600万后找债主还钱</a></li>
								</ul>
							</div>
						</div>
							<div class="ntemp">
							<div class="ntemp-w">
								<div class="nhd"><strong><a href="#">公司活动</a></strong> </div>
								<ul>
									<li class="inews-pic">
										<a href="#"><img src="${pageContext.request.contextPath}/img/20180714021.jpg" alt=""></a>
										<p class="tjtitle"><a href="${pageContext.request.contextPath}/show/224.html">
														&bull;&nbsp;[05-30]《谈古论今》黄金5月大型海选推荐活动拉开帷幕</a></p>
									</li>
									<li><a href="${pageContext.request.contextPath}/show/223.html">
														&bull;&nbsp;[04-01] 2017艺术品交易会藏品赏析 粉彩花瓶</a></li>
									<li><a href="${pageContext.request.contextPath}/show/220.html">
														&bull;&nbsp;[04-01] 2017艺术品交易会藏品赏析  胭脂红</a></li>
									<li><a href="${pageContext.request.contextPath}/show/221.html">
														&bull;&nbsp;[04-01] 2017艺术品交易会藏品赏析 喜字罐</a></li>
									<li><a href="${pageContext.request.contextPath}/show/222.html">
														&bull;&nbsp;[04-01] 2017艺术品交易会藏品赏析 青花富贵吉祥脉枕</a></li>
								</ul>
							</div>
						</div>
							<div class="ntemp">
							<div class="ntemp-w">
								<div class="nhd"><strong><a href="#">藏品推荐</a></strong> </div>
								<ul>
									<li class="inews-pic">
										<a href="${pageContext.request.contextPath}/show/214.html">
														<img src="${pageContext.request.contextPath}/img/20180714022.jpg" alt=""></a>
										<p class="tjtitle"><a href="${pageContext.request.contextPath}/show/214.html">&bull;&nbsp;[08-08]【精品赏析】红梅报春</a></p>
									</li>
									<li><a href="${pageContext.request.contextPath}/show/215.html">&bull;&nbsp;[07-08] 【精品赏析】青花罗汉碗</a></li>
									<li><a href="${pageContext.request.contextPath}/show/216.html">&bull;&nbsp;[07-07] 【精品赏析】堆彩山水风景图紫砂壶</a></li>
									<li><a href="${pageContext.request.contextPath}/show/217.html">&bull;&nbsp;[06-01] 【精品赏析】斗彩花卉碗</a></li>
									<li><a href="${pageContext.request.contextPath}/show/218.html">&bull;&nbsp;[06-01] 【精品赏析】松石绿地粉彩缠枝莲福寿纹葫芦瓶</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
     <!-- end inews -->	
		    </div>
		</div>
	</div>
</div>