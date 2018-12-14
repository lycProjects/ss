window.onload = function(){
	var js_regNav = document.getElementById('js_regNav').getElementsByTagName('li');
	var js_regTitle = document.getElementById('js_regTitle');
	var js_regFrame = document.getElementById('js_regFrame').getElementsByTagName('iframe')[0];
	var srcs = new Array(3);
	srcs[0] = "https://kh.zgqbyp.com/SelfOpenAccount/index.jsp?brokerId=1046";
	srcs[1] = "http://www.huaxiacae.com/zxkh/index1.php";
	srcs[2] = "http://43.240.136.229:10003/SelfOpenAccount/firmController.fir?funcflg=getBrokerList";
	for(var i = 0;i < js_regNav.length;i++){
		js_regNav[i].onmousemove = function(){
			for(var i = 0;i < js_regNav.length;i++){
				js_regNav[i].className = '';
			}
			this.className = 'active';;
			js_regTitle.innerHTML = this.innerHTML;
		}
	}
	for(var i=0;i< js_regNav.length;i++){
		js_regNav[i].index = i;
		js_regNav[i].onclick = function(){
			js_regFrame.src = srcs[this.index]
		}
	}
}
