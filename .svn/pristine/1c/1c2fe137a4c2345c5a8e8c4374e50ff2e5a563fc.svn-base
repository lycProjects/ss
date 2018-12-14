window.onload=function(){
    
     var speed = 50;  
    demo2.innerHTML = demo1.innerHTML;  //原有的demo1存在，在加demo2的内容实现循环
    function Marquee() {  
        if (demo2.offsetTop - demo.scrollTop <= 0) {  
            demo.scrollTop -= demo1.offsetHeight; //用于循环部分 
        } else {  
            demo.scrollTop++;   //scrollTop:设置或获取位于对象最顶端和窗口中可见内容的最顶端之间的距离
        }  
    }  
    var MyMar = setInterval(Marquee, speed);  
      //方法可按照指定的周期（以毫秒计）来调用函数或计算表达式setInterval(函数名, 速度值)，执行函数
    demo.onmouseover = function() {  
        clearInterval(MyMar); //当鼠标覆盖清除调用函数 
    }  
      
    demo.onmouseout = function() {  
        MyMar = setInterval(Marquee, speed);  //当鼠标不覆盖，执行调用函数  
    }  
} 
   
    