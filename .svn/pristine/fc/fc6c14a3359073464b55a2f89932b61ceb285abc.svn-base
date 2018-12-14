(function( window ) {
	$.fn.extend({
		// $(id).wendyslide(option)
 		wendyslide:function(_d){
			var me=this; // $(id)

			var def={
				autoPlay:false,
				delay:2000, // 每组间隔
				sdelay:600,// 滑动耗时
				mcurr:"ws-menu-curr",
				effect:'left', // 'fade'
				showmenu:true,
				menuContainer:null,
				el:'li',
				gap:0,
				snum:1, // 滑动个数 , 注意：总数7个，每次移动2个，则划分4组，因为最后一组是单数1个，最后一次只能滑动 1 个的距离 。 比较特别
				info:null,
				zindex:600,
				easeWay:'easeOutQuad'
			}
			var opts=$.extend({},def,_d);// 合并


			opts.whCssPty=null;
			opts.mlist=null;


			var mstr="";
			var $sobj=this.find('ul:first-child'); // 真正执行滑动的是 ul 节点
			var $list=$sobj.find(opts.el);
			var list_len=$list.length; // 原个数

			var mq_reset_flag=0;
			var containerWidth=this.innerWidth();
			var containerHeight=this.innerHeight();
			var containerWH=0;
			var itemWidth=$list.get(0).offsetWidth;
			var itemHeight=$list.get(0).offsetHeight;
			var itemWH=0;

			var sindex=0;
			var sTimer=null;
			var yu=0;
			

			// start utils
			var ExpUtils={
				setSindex:function(_si){ // 计算 sindex
					//console.log(sindex)
					//console.log(_si)
					if (_si===undefined) {
						sindex=sindex<list_len?sindex+1:0;
					}else if(_si==='+1' || _si==='-1' ) {
						eval('sindex=sindex'+_si);
					}else if(_si!==undefined){
						sindex=_si;
					}
					
					if (sindex<0) { // 
						sindex=list_len-1; // 表示之后滑动到原生组最后一项。
						if (opts.effect=='left' || opts.effect=='top') {
							$sobj.css(opts.animateCssPty,-list_len*opts.gap*opts.snum+'px'); // 上一个，计算为负值，立即设定偏移左侧，原生组的宽度，而复制组正好显示。
						}
					}else if(sindex>=list_len) {
						if( ( ( opts.effect=='left' || opts.effect=='top' ) && sindex>list_len) || opts.effect=='fade' ){ sindex=0; }  // effect=left | top此处不判断 sindex==list_len， 在滑动完成后的回调函数里判断。
					}
					//console.log(sindex)
					return sindex;
				},
				setAnimateJson:function(_v){
					var _data={};
					_data[opts.animateCssPty]=_v;
					return _data;
				},
				showInfo: function(_si){
					opts.info && $(opts.info).html(((_si!==undefined?_si:sindex)+1)+" / " + list_len);
				},
				menuStyle: function(_si){
					opts.showmenu && opts.mlist.each(function(_i){ $(this)[_i==(_si!==undefined?_si:sindex)?'addClass':'removeClass'](opts.mcurr);});
				},
				copyEl:function(){ // 
					// 复制组 list_len
 					$sobj.append($sobj.html());
				},
				mqFuns:{
					initPos:function(){
						if (opts.gap<0) {
							$sobj.css(opts.animateCssPty,'0px');//重新设回原生组第一个							
						}else if (opts.gap>0) {
							$sobj.css(opts.animateCssPty,-sobjWH_WithCopy+containerWH+'px');
						}
					}
				}
			}
			// end utils

			var isMQ=opts.effect.indexOf('mq')==0;
			
			if (',left,top,'.indexOf(','+opts.effect+',')>-1) {

				yu=list_len%opts.snum; // 余数
				list_len= Math.ceil(list_len/opts.snum);
				

	 			if (opts.effect=='left') {
	 				if(!opts.gap) opts.gap=	$list[0].offsetWidth;//$sobj.innerWidth();
 
	 			 	opts.whCssPty='width'; 
	 			 	opts.animateCssPty='left'; 

	 			 	ExpUtils.copyEl();//复制 

	 			}else if (opts.effect=='top') {
	 				if(!opts.gap) opts.gap=$list[0].offsetHeight;//$sobj.innerHeight();
	 				opts.whCssPty='height'; 
	 				opts.animateCssPty='top'; 
	 				$sobj.css({'position':'absolute','top':'0px','left':'0px'});
	 				ExpUtils.copyEl();//复制 

					$sobj.find(opts.el).each(function(_i,_o){
						$(this).css('float','none');
					});
	 			}
	 			
				$sobj.css(opts.whCssPty,$list[0].offsetWidth*$list.length*2+'px'); // 算上复制的

			}else if (opts.effect=='fade') {
				var $lastobj=null;
				this.css('position','relative');
				$list.each(function(i,o){
					$list.css({'position':'absolute','top':'0','display':'none','left':'0','z-index':opts.zindex});
					if(i==0) { $lastobj=$(o); } 
				});
				$lastobj.css({'display':'block'}).get(0).setAttribute('lastone','true');

			}else if (isMQ) { // 
				if(!opts.gap) opts.gap=-1;
				opts.showmenu=false;//不显示
 				opts.sdelay=20;
				var el_width=$sobj.innerWidth(),
				el_height=$sobj.innerHeight(); 
				
				ExpUtils.copyEl();// 复制
 
				// IE 6
				$sobj.css({'position':'absolute','left':'0px','top':'0px'}); // init 

				if (opts.effect=='mqleft') {
					// mq left 
					opts.animateCssPty='left'; 
					opts.offsetPty='offsetLeft'; 
					opts.whCssPty='width'; 
					containerWH=containerWidth;
					itemWH=itemWidth;
 					var sobjWH=list_len*itemWH;// 原ul 
					var sobjWH_WithCopy=list_len*2*itemWidth; // 复制后ul
					$sobj.css(opts.whCssPty,list_len*2*itemWidth+'px'); // 算上复制的 整个ul 内item的宽度

					mq_reset_flag=0-(sobjWH_WithCopy-sobjWH-containerWH);

				}else if (opts.effect=='mqtop') {
					// mq top
					opts.animateCssPty='top'; 
					opts.offsetPty='offsetTop'; 
					opts.whCssPty='height'; 
					containerWH=containerHeight;
					itemWH=itemHeight;
 
					var sobjWH=$list.length*itemWH;
					var sobjWH_WithCopy=list_len*2*itemHeight;
					$sobj.css(opts.whCssPty,list_len*2*itemHeight+'px'); // 算上复制的 整个ul 内item的宽度
 					mq_reset_flag=0-(sobjWH_WithCopy-sobjWH-containerWH);

					$sobj.find(opts.el).each(function(_i,_o){
						$(this).css('float','none');
					});
				}


				ExpUtils.mqFuns.initPos();

				$sobj.bind({
					'mouseover':function(){ stop(); },
					'mouseout':function(){ start(); }
				});
			}

			// 生成序列按钮
			if (opts.showmenu && opts.mlist==null) {
				var $menu=this.find('.smenu:first');
				for (var i = 0; i < list_len; i++) {
 					mstr +='<a rel="nofollow" href="javascript:void(0)" '+(i==0?' class="'+opts.mcurr+'"':'')+'>'+(i+1)+'</a>';
				}
				$menu.html(mstr);
				opts.mlist=$menu.find("a");
				opts.mlist.each(function(i,o){
					$(this).bind('click',function(){
						if (opts.effect=='left' || opts.effect=='top' || (opts.effect=='fade' && $list[i].getAttribute('lastone')!="true")){
							stop();
							showExecute(i);
						}
 					});
				});
				$menu.bind('mouseout',function(){
					start();
				});
			}

			// 上/下一个 事件
			var $prev=this.find('.sprev:first');
			var $next=this.find('.snext:first');
			$prev.bind({
				'click':function(){
					if (isMQ) {//转向
						opts.gap=0-Math.abs(opts.gap);
					}
					stop();
					showExecute('-1');

				},
				'mouseout':function(){
					start();
				}
			});

			$next.bind({
				'click':function(){
					if (isMQ) {//转向
						opts.gap=Math.abs(opts.gap);
					}
					stop();
					showExecute('+1');
				},
				'mouseout':function(){
					start();
				}
			});
			
			var showExecute=function(_n){
				if (opts.effect=='left' || opts.effect=='top') {
					execMove(_n);
				}else if(opts.effect=='fade'){
					execFade(_n);
				}else if(isMQ){
					execMq();
				}
			}

			var execMove=function(_n){
				if (!$sobj.is(':animated')){
					ExpUtils.setSindex(_n);
					$sobj.animate(ExpUtils.setAnimateJson(-opts.gap*opts.snum*sindex+'px'),opts.sdelay,function(){
						if (sindex==list_len) {
							var resetPos=0;
							if (yu>0) {
								resetPos=-opts.gap*(opts.snum-yu);// 重新设回原生组 .  opts.gap * (snum - 余数)
							}
							$sobj.css(opts.animateCssPty,resetPos+'px');//重新设回原生组第一个 .  opts.gap x 余数
							sindex=0;
						}
						ExpUtils.menuStyle();
						ExpUtils.showInfo();
					});
					if (opts.autoPlay!==false) {
						sTimer=setTimeout(function(){execMove();},opts.delay);
					}
				} 
			};

			var execFade=function(_n){// A、B均显示，且B叠放在A下面. A.fadeOut 渐隐，则B可见
				ExpUtils.setSindex(_n);
				if ( !$lastobj.is(":animated") ) {
					$list.each(function(_i,_o){
						if (sindex==_i) {
							$(this).css({'opacity':1,'display':'block','z-index':opts.zindex-10});
 							this.setAttribute('lastone','true');
 						}else{
							if(this.getAttribute('lastone')=='true'){
								$lastobj=$(this);
								this.style.zIndex=opts.zindex;
							}
							this.setAttribute('lastone','false');
						}
					});
					$lastobj.fadeOut("slow");
					ExpUtils.menuStyle();
					ExpUtils.showInfo();
				}
				if (opts.autoPlay!==false) {
					sTimer=setTimeout(function(){execFade();},opts.delay);
				}
			};

			var execMq=function(_n){
 				var checkStatus=opts.gap<0 && Math.abs($sobj.get(0)[opts.offsetPty])==sobjWH || opts.gap>0 && $sobj.get(0)[opts.offsetPty]==mq_reset_flag;
				if (checkStatus) {
					ExpUtils.mqFuns.initPos();
				}else{
					$sobj.css(opts.animateCssPty,$sobj.get(0)[opts.offsetPty]+opts.gap+'px');
				}
				if (opts.autoPlay!==false) {
					sTimer=setTimeout(function(){execMq();},opts.delay);
				}
			};

			var stop=function () {
				sTimer && clearTimeout(sTimer);
				sTimer=null;
			}
			var start=function () {
				stop();
				if (opts.autoPlay!==false) {
					sTimer=setTimeout(function(){showExecute();},opts.delay);
				}
			}
			ExpUtils.showInfo();
			start();
 		}
	});
})(window);