
/*  */
(function(window){
	$.fn.extend({
		Cove:function(_d){  

			var me=this; // $(id)

			var def={
				el:null,
				action:'mouseover',
				sdata:me.attr('sdata')?me.attr('sdata'):null,
				currClass:'',
				defClass:'',
				mode:'switch',// switch select tab dropdown
				effect:'',
				setfirst:true,
				after:null
			};
			var opts=$.extend({},def,_d);

			if(opts.action=="hover"){opts.action="mouseover";}
			if(opts.mode=="dropdown"){opts.mode="tab";} // mode : dropdown 和 tab 一致

			var $mlist=this.find(opts.el);
			var $slist=null;
			if (opts.sdata!=null) {
				var sdataType=Object.prototype.toString.apply(opts.sdata).toLowerCase();
				if(sdataType=='[object string]'){
					$slist=$(opts.sdata);
				}else{
					$slist=opts.sdata;
				}
			}

			$mlist.each(function(i,o){
				var _me=this;
				if(opts.mode=='switch' && opts.setfirst && i==0){
					!$(this).hasClass(opts.currClass) && $(this).addClass(opts.currClass);
					if($slist!=null){$slist[0].style.display="block";}
					if (typeof(opts.after) === 'function') {
						opts.after.call(this,i,_me);
					}
				}

				if(opts.mode=='tab'){
					if (opts.action=='mouseover') {
						$(this).bind('mouseout',function () {
							$(this).removeClass(opts.currClass);
							opts.defClass && $(this).addClass(opts.defClass);
						});
					}else if(opts.action=='mousedown' || opts.action=='click') {
						$(document).bind(opts.action,function () {
							$(_me).removeClass(opts.currClass);
							opts.defClass && $(_me).addClass(opts.defClass);
						});
					}
				}

				$(this).bind(opts.action,function(e){
					e=window.event || e;
					e.cancelBubble=true;
					!browser.ie && e.stopPropagation();// 阻止冒泡
					
 	 
					if ($(this).hasClass(opts.currClass)) {
						//return;// 不要 return false，否则导致内部标签无法触发事件
					}
 

					if (opts.mode=='select') {
						$(this).toggleClass(opts.currClass); // 可作checkbox多选框选中效果
						var isSelected=((" "+this.className+" ").indexOf(" "+opts.currClass+" ")>-1);
						if (typeof opts.after === 'function') { opts.after.call(this,i,_me,isSelected); } //  bool值 - isSelected是否选中 
					}else{
						$mlist.each(function(_i,_o){
							if(this!=_me){
								opts.defClass && $(this).removeClass(opts.defClass);
								$(this).removeClass(opts.currClass);
							}else{
								if(opts.mode=='tab'){
									$(this).toggleClass(opts.currClass);
								}else {
									$(this).addClass(opts.currClass);
								}
							}
							if($slist!=null){ 
								$slist[_i].style.display='none';
								if(opts.effect=='fade'){
									$($slist[_i]).stop();
									$($slist[_i]).css({'opacity':0});//fade方式必须设置，否则hover方式 当用鼠标快速切换时导致错误
								}
							}
						});
						if($slist!=null){ 
							if(opts.effect=='fade'){
								$($slist[i]).css({'opacity':1});
								$($slist[i]).fadeIn();
							}else{
								$slist[i].style.display='block'; 
							}
						}
						if (typeof opts.after === 'function') { opts.after.call(this,i,_me); }
					} 
				});
			});
		},
 		sfly:function(_d) {
			var thisdom=this.get(0);
			var flytimer=null;
			var sp=_d.sp?_d.sp:0.08; //平滑度百分比
			var pertime=_d.pertime?_d.pertime:5;  //每隔多少毫秒执行滑动
			var top=_d.top?_d.top:250;  //距离顶端
			var left=20;  // 默认水平距离
			if (_d.hasOwnProperty('right')) {
 				thisdom.style.right=_d.right+"px";
			}else {
				thisdom.style.left=_d.hasOwnProperty('left')?_d.left:left+"px";
			}
 			thisdom.style.top=top-10+"px";
			if (_d.sid!=undefined) {
				var sobj=T$(_d.sid);
				var hobj=T$(_d.hid);
				var cobj=T$(_d.cid);//关闭按钮
				if (_d.showinit=='inithide') {
					hobj.style.display="block";
				}else{
					sobj.style.display="block";
				}
				$(cobj).bind('click',function () {
					sobj.style.display='none';
					hobj.style.display='block';
				});
				$(hobj).bind('click',function () {
					sobj.style.display='block';
					hobj.style.display='none';
				});
			}
			var goFly =function(){
					var obj_px=thisdom.offsetTop;
					var lastPx = obj_px;
					var percent= sp*($(document).scrollTop()+top -lastPx);
					if(percent>0) percent=Math.ceil(percent);
					else if (percent<0) percent=Math.floor(percent); 
					thisdom.style.top=obj_px+percent+"px"; 
 					flytimer=setTimeout(function(){goFly();},pertime);
			};
			goFly();
		}
	})
})(window);
