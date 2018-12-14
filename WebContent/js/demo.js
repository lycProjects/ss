function getStyle(obj,attr) {
    if(obj.currentStyle){
        return obj.currentStyle[attr];
    }else {
        return getComputedStyle(obj,false)[attr];
    }
}
function Move(obj,json,fn,k) {
    clearInterval(obj.timer);
    obj.timer = setInterval(function () {
        for(var attr in json){
            var flag = true;
            var icur = 0;
            if(attr == 'opacity'){
                icur = Math.round(parseFloat(getStyle(obj,attr))*100);
            }else {
                icur = parseInt(getStyle(obj,attr));
            }
            var speed = (json[attr] - icur)/8;
            speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed);
            if(icur != json[attr]){
                flag = false;
            }
            if(attr == 'opacity'){
                obj.style[attr] = (icur + speed)/100;
            }else {
                obj.style[attr] = icur + speed + 'px';
            }
            if(flag){
                clearInterval(obj.timer);
                if(fn){
                    fn();
                }
            }
        }
    },k);
}
var closebtn = document.getElementById('close_btn').getElementsByTagName('a');
var content_box = document.getElementById('content_box');
var show_btn = document.getElementById('show_btn');
closebtn[0].onclick = function() {
	Move(content_box,{right:-154},function(){},5);
	Move(show_btn,{right:0},function(){},5);
}
show_btn.onclick = function(){
	Move(content_box,{right:0},function(){},5);
	Move(show_btn,{right:123},function(){},5);
}
