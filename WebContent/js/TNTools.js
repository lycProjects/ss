Array.prototype.unique = function() { 
	var a = {}, c = [], l = this.length; 
	for (var i = 0; i < l; i++) { 
		var b = this[i]; 
		var d = (typeof b) + b; 
		if (a[d] === undefined) {
			c.push(b); 
			a[d] = 1;  
		};
	};
	return c; 
};

Array.prototype.rand=function(_num){
	var t = [],rt = [];
	for (x = 0; x<this.length; x++) { 
		t[x]=this[x];
	};
	for (var i = 0; i<_num; i++) { 
		if (t.length>0) { 
			var aindex = Math.floor(Math.random()*t.length); 
			rt[i] = t[aindex]; 
			t.splice(aindex, 1);
		}else{ 
			break; 
		};
	};
	return rt; 
};

var TNT=window.TNT=function () {
	return {
		init : function () {
		},
		$ : function (_n) {
			return T$(_n);
		},
		extend : function (prop) {
			
			for (var i in prop){
				if (prop[i] != undefined) {
					this[i] = prop[i];
					
				}
			}
		}
	}
}();


TNT.utils = {
	setCookie: function(_n, _val, _expireHours, _path) {
		var cookieStr = _n + "=" + escape(_val) + ";path=" + (_path != undefined ? _path : "/");
		var exdate = new Date();
		exdate.setTime(exdate.getTime() + _expireHours * 3600 * 1000);
		cookieStr += ";expires=" + exdate.toUTCString();
		document.cookie = cookieStr;
	},
	deleCookie: function(_n) {
		var cval = this.getCookie(_n);
		if (cval != null) {
			this.setCookie(_n, cval, -1);
		}
	},
	getCookie: function(_n) {
		// 1.不传入_n: 返回所有cookie（json格式 key=value ）, 无任何cookie则返回null
		// 2.传入_n : 则返回名为_n的cookie,若无该cookie,返回null; 
		var a;
		if (document.cookie.length > 0) {
			a = {};
			var cookies = document.cookie.split(";");
			$(cookies).each(function(i, o) {
				var b = o.split('=');
				var kk = b[0].replace(/^\s*/igm, ""); // 取key时,key前会有空格,比较诡异, 导致出错. 严格来讲,要将cookie以json方式的返回，则key不应该有空格 tab 换行,保持简单，此处全替换。 
				a[kk] = unescape(b[1]);
			});
		}
		var c = a ? a : null;
		var r = _n != undefined ? (c ? (c.hasOwnProperty(_n) ? eval("c." + _n) : null) : null) : c;
		return r;
	}
};

TNT.extend({
	createEl: function(_str, _attrs) {
		var el;
		var re = /(^#.*?>)?(\w+(#[^\.]+)?(\..+)?)/ig;
		var arr = re.exec(_str);// arr可以取括号组集合，用RegExp.$1只有9个
		$1 = RegExp.$1;
		$2 = RegExp.$2;
		$3 = RegExp.$3;
		$4 = RegExp.$4;
		var _parent = $1.replace(/#|>/ig, "")
		var _eltype = $2.replace(/(#|\.).*/ig, "")
		var _hasid = $3 != "" ? true : false;
		var _hasclass = $4 != "" ? true : false;

		var el = document.createElement(_eltype);
		if (_parent == "document.body") document.body.appendChild(el);
		else if (_parent != "" && T$(_parent)) T$(_parent).appendChild(el);

		_hasid ? el.id = $3.replace(/#|\..*/ig, "") : 0;
		_hasclass ? el.className = $4.replace(/\./ig, " ").replace(/^\s+/ig, "") : 0;

		for (var attr in _attrs) {
			if (_attrs.hasOwnProperty(attr)) {
				el.setAttribute(attr, _attrs[attr])
			}
		}
		return el;
	},
	each: function(obj, iterator, context) { // callback的参数 和 jquery 相反
		if (obj == null) return;
		if (obj.length === +obj.length) { // 数组
			for (var i = 0, l = obj.length; i < l; i++) {
				if (iterator.call(context, obj[i], i, obj) === false)
					return false;
			}
		} else {
			for (var key in obj) {
				if (obj.hasOwnProperty(key)) {
					if (iterator.call(context, obj[key], key, obj) === false)
						return false;
				}
			}
		}
	},
	loadCSS: function(_href,_pos) {
		var res=document.createElement('link');
		res.rel="stylesheet";
		res.type="text/css";
		res.href=_href;
		if (_pos==1) {
			document.getElementsByTagName("head")[0].appendChild(res);
		}else{
			document.body.appendChild(res);
		}
	},
	loadJS: function(_src, _cb, _onerr) {
		var SC = document.createElement("script");
		SC.type = "text/javascript";
		SC.charset = "utf-8";
		SC.src = _src;
		//SC.async = true;
		SC.onerror = function() {
			typeof _onerr === 'function' && _onerr.call();
		}
		var setNull = function(_n) {
			SC.onreadystatechange = null;
			SC.onload = null;
			(typeof _cb === 'function' && _n == 1) && _cb.call();
		}
		var loaded = function() {
			SC.readyState ? (',loaded,complete,'.indexOf(',' + SC.readyState + ',') > -1 ? setNull(1) : 0) : setNull(1);
		}
		//if (!!window.ActiveXObject) {
		var onloadKey = this.browser.ie ? 'onreadystatechange' : 'onload';
		SC[onloadKey] = function() {
			loaded();
		}
		document.getElementsByTagName('head').item(0).appendChild(SC);
	},
	parseURL: function(url) {
		if (/^https?:\/\//ig.test(url)) { // URL
			var a =  document.createElement('a');
			a.href = url;
			var u_file=(a.pathname.match(/\/([^\/?#]+)$/i) || [,''])[1];
			return {
				source: url,
				protocol: a.protocol.replace(':',''),
				host: a.hostname,
				port: a.port,
				query: a.search,
				params: (function(){
					var ret = {},
						seg = a.search.replace(/^\?/,'').split('&'),
						len = seg.length, i = 0, s;
					for (;i<len;i++) {
						if (!seg[i]) { continue; }
						s = seg[i].split('=');
						ret[s[0]] = s[1];
					}
					return ret;
				})(),
				file: u_file,
				extension: u_file.replace(/.*\./ig,'').toLowerCase(),
				hash: a.hash.replace('#',''),
				pathself: a.href.replace(/\?.*/,''),
				path: a.pathname.replace(/^([^\/])/,'/$1'),
				relative: (a.href.match(/tps?:\/\/[^\/]+(.+)/) || [,''])[1],
				segments: a.pathname.replace(/^\//,'').split('/')
			};
		}else {// 文件
			var u_dir='',
				u_file='';
			var url_c=url.replace(/\\/ig,'/').replace(/\/{2,}/ig,'/');
			if (url_c.indexOf('/')>-1) {
				if (url_c.lastIndexOf('/')==url_c.length-1) {
					u_dir=url_c;
				}else {
					var url_arr=url_c.split('/');
					var url_arr_new=url_arr.slice(0,-1);
					u_file=url_arr[url_arr.length-1];
					u_dir=url_arr_new.join('/');
				}
			}
			return {
				source: url,
				dir:u_dir,
				file:u_file
			};
			return null;
		}
	},
	rebuildUrl: function(_p, _url_def) {
		if (_url_def === undefined) _url_def = location.href;
		var str = '';
		var urlObj=this.parseURL(_url_def);
		if (urlObj.query != '') {
			this.each(urlObj.params, function(_o,_k) {
				!_p.hasOwnProperty(_k) && (_p[_k] = _o);
			});
		}
		this.each(_p, function(_o, _k) {
			str += '&' + _k + '=' + _o;
		});
		return str != '' ? urlObj.pathself + '?' + str.replace(/^&+/, '') : _url_def;
	},
	addEvent: function(_target, _ename, _fun) {
		var args = null;
		if (arguments.length > 3) {
			args = Array.prototype.slice.call(arguments, 3);
		}
		var handle = _fun; // 考虑 removeEvent ， handle需和注册的函数一致
		if (args) {
			handle = function(e) {
				e = window.event || e;
				args.unshift(e);
				_fun.apply(_target, args);
			};
		}
		if (typeof window.addEventListener != "undefined") {
			_target.addEventListener(_ename, handle, false);
		} else if (typeof window.attachEvent != "undefined") {
			_target.attachEvent("on" + _ename, handle);
		};
	},
	removeEvent: function(_target, _ename, _fun) {
		if (typeof window.removeEventListener != "undefined") {
			_target.removeEventListener(_ename, _fun, false);
		} else if (typeof window.detachEvent != "undefined") {
			_target.detachEvent("on" + _ename, _fun);
		};
	}
});

TNT.each(['String', 'Function', 'Array', 'Number', 'RegExp', 'Object'], function(v) {
	TNT['is' + v] = function(obj) {
		return Object.prototype.toString.apply(obj) == '[object ' + v + ']';
	}
});


var browser=TNT.browser=function () {
	var agent = navigator.userAgent.toLowerCase();
	var browser={
		ie:agent.indexOf('msie')>-1,
		ie6:agent.indexOf('msie 6.0')>-1,
		ie7:agent.indexOf('msie 7.0')>-1,
		ie8:agent.indexOf('msie 8.0')>-1,
		ie9:agent.indexOf('msie 9.0')>-1,
		chrome:agent.indexOf('chrome/')>-1,
		firefox:agent.indexOf('firefox/')>-1,
		opera:agent.indexOf('opera')>-1 || (/\sopr\/\d+/).test(agent)
	};
	return browser;
}();

 if (!browser.ie){
	if(window.getComputedStyle){
		HTMLElement.prototype.getCssStyle=function(prop){ //给所有HTMLElement添加一个方法
			if(!window.getComputedStyle) return null;
 			return window.getComputedStyle(this,null)[prop];// 可以兼容
		};
	};
};

function T$(n){
	var _elem=document.getElementById(n);
 	_elem==undefined?_elem=null:'';
 	return _elem;
};

function regReplace(_inputstr,_regPattern,_replaceStr){
	var reg=new RegExp(_regPattern,"igm");// g （全文查找出现的所有 pattern） i （忽略大小写） m （多行查找） 
	return _inputstr.replace(reg, _replaceStr);
};
