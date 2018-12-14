var InputFun={
	Blur:function(_o,_str) {
		if (_o.value=='') {
			_o.value=_str;
		}
	},
	Focus:function(_o,_str) {
		if (_o.value==_str) {
			_o.value='';
		}
	}
}

var bdtimeout=null;
var NavCurrent={
	navitems:"#st-navmain .navli",
	currentClassName:"nav-current",
	config:[
		// smatch �ַ�ƥ�� �ո������
		// sindex ��������˳��ֵ �±�0��ʼ
		// ��ҳ ����
		{"smatch":"/aboutus/","sindex":1},// ����
		{"smatch":"/news/","sindex":2},
		{"smatch":"/jdzj/","sindex":3},
		{"smatch":"/jptj/","sindex":4},
		{"smatch":"/wuhuatianbao/","sindex":5},
		{"smatch":"/byweizhan/","sindex":6},
		{"smatch":"/lianxi/","sindex":7}
	],
	setCurrent: function() {
		for (i=0;i<this.config.length ;i++ ){
			var smArr=this.config[i].smatch.split(' ');
			for (j=0;j<smArr.length ;j++ ){
				// toLowerCase ���Դ�Сд
				if (smArr[j]!='' && location.href.toLowerCase().indexOf(smArr[j].toLowerCase())>-1) {
					this.setNavStyle(this.config[i].sindex);
					return;
				}
			} 
		}
	},
	setNavStyle: function(_n){
		$(this.navitems).each(function(p){	 
			if(p==_n){
				//console.log(NavCurrent.currentClassName)
 				$(this).addClass(NavCurrent.currentClassName);
			}
		});
	}
}


 
 
$(function () {
	
	var phoneRedirect=TNT.utils.getCookie('phoneredirect');
 	if (location.search.indexOf("from=phone")>-1) {// ���ж�����
		TNT.utils.setCookie("phoneredirect",0,24*10);
		phoneRedirect=0;
 	}else if (phoneRedirect==null) {
		TNT.utils.setCookie("phoneredirect",1,24*10);
		phoneRedirect=1; // Ĭ����ת
	}

	if (phoneRedirect==1) {
		var isMobile = (/mmp|smartphone|midp|wap|phone|xoom|iphone|ipod|ipad|android|blackberry|mini|ucweb|Windows Phone|windowssce|palm/i.test(navigator.userAgent.toLowerCase()));
		if (isMobile) {
			//location.href="http://m.asdfsdfgdfghdfg.com/";
		}
	}

	var myToday=new Date(),myTodayArr=[myToday.getFullYear(),myToday.getMonth()+1,myToday.getDate()];
	var Today={
		y:myToday.getFullYear(),
		m:myToday.getMonth()+1,
		d:myToday.getDate()
	}

 	//$("#top-wb").append('<a target="_blank" href="#">�ٷ�΢��</a>');

 	$("#st-navmain").Cove({
		el:'li.dropdown',
		action:'hover',
		currClass:'open',
		setfirst:false,
		mode:'dropdown',// switch select tab
		after:null
	});

 	$("#protab").Cove({
		el:'a',
		sdata:'#div-ipro-list ul',
		action:'hover',
		currClass:'on',
		setfirst:true,
		after:null
	});
 

 	$("#side-catelist").Cove({
		el:'a.adrop',
		action:'click',
		currClass:'adrop-on',
		setfirst:false,
		after:function(_i,_o){
			$div=$(_o.parentNode).find('div:first');
			if ($div.css("display")=="none") {
				$(_o.parentNode).find('div:first').slideDown();
				$(_o.parentNode).addClass('on');
			}else{
				$(_o.parentNode).find('div:first').slideUp()
				$(_o.parentNode).removeClass('on');
			} 
		}
	});


	// ����ѡ� https://www.cnblogs.com/SHL-sherly/p/5536909.html
	$(".flexslider").flexslider({
		directionNav:false, // ���ҿ��ư�ť
		slideshowSpeed: 4000, //չʾʱ����ms
		animationSpeed: 400, //����ʱ��ms
		touch: true //�Ƿ�֧�ִ�������
	});
 
	if (T$("wendyslide-1")) {
		$("#wendyslide-1").wendyslide({
			autoPlay:true, // ���Կ� ���Զ����ţ�Ȼ���� ���°�ť��
			//mcurr:"smucurr",//û�а�ť��ʾ
			effect:'mqleft',
			//info:'#ssort-4',
			gap:-1,   // ��ֵ����
			delay:10 // ע���޷컬���Ƚ��ر���ʹ��delay �����ٶ� ��Ҫ����̫��ֵ ԽСԽ��
		});
	}

	// ���ض���
	if (!browser.ie6){
		initGoTop();
	}


	if ($('#bigimg-li')) {
		$("#thumblist li:first").addClass('on');
 		$("#thumblist img").bind("mouseover",function(_i,_o){ 
			// ���¶�̬������ͼƬ��������ͼƬ���� �Ŵ�Ч��������Ŵ��޷�ȡ��ͼƬ��
			$('#bigimg-li img').remove(); 
		
			$("#thumblist li").each(function () {
				$(this).removeClass('on');
			});
			$(this.parentNode.parentNode).addClass('on');
			

			var imgSrc_thumb = $(this).attr("src");
			var imgSrc_small = $(this).attr("src_H");
			var imgSrc_big = $(this).attr("src_D");
			$('#bigimg-li').append('<img src="'+imgSrc_small+'"  data-zoom-image="'+imgSrc_big+'">');
			$("#bigimg-li img").elevateZoom({}); 
		 });
 		$("#bigimg-li img").elevateZoom({}); 
 	}

	// $collection.lazyload(setting)
	$("img.forlazyload").lazyload({
		effect : 'fadeIn'
		//placeholder : "/skins/shengte/images/loading_big.gif"
	});
 
	NavCurrent.setCurrent();
 
});

 
function initGoTop() {
	$(document.body).append('<div id="gototop"><a href="javascript:;" rel="nofollow"></a></div>');
	$('#gototop').on("click",function () {
		// ��html�ڵ���й���
 		$(document.documentElement).animate({scrollTop:0},600);
	});
	$(window).scroll(function() {
		if ($(document).scrollTop() > 60) {
			$('#gototop').addClass('on');
		} else {
			$('#gototop').removeClass('on');
		}
	});
}
  