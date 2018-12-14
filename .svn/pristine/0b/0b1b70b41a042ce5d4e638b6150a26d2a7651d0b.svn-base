package com.Sansu.util;
/**
 * 封装->面包区  导航页面
 * @author My
 *
 */
public class NavUtil {
	public static String genNewsManageNavigation(String modName,String actionName){//后台nav
		StringBuffer navCode=new StringBuffer();
		navCode.append("当前位置：&nbsp;&nbsp;");
		navCode.append("主页&nbsp;&nbsp;>&nbsp;&nbsp;");
		navCode.append(modName+"&nbsp;&nbsp;>&nbsp;&nbsp;");
		navCode.append(actionName+"&nbsp;&nbsp;");
		return navCode.toString();
	}
	
	public static String genNewsListNavigation(String typeName,String typeId){//新闻列表面包区
		StringBuffer navCode=new StringBuffer();
		navCode.append("当前位置：&nbsp;&nbsp;");
		navCode.append("<a href='/Sansu/goIndex'><font color='#FF6700'>主页</font></a>&nbsp;&nbsp;>&nbsp;&nbsp;");
		navCode.append("<a href='/Sansu/list/"+typeId+".htm'><font color='#FF6700'>"+typeName+"</font></a>");
		return navCode.toString();
	}
	//Sansu为项目名,没有动态获取!!
	public static String genNewsNavigation(String typeName,String typeId,String newsName){//新闻内容页面包区
		StringBuffer navCode=new StringBuffer();
		navCode.append("当前位置>&nbsp;&nbsp;</font>");
		navCode.append("<a href='/Sansu/goIndex'><font color='#FF6700'>主页</font></a>&nbsp;&nbsp;>&nbsp;&nbsp;");
		navCode.append("<a href='/Sansu/list/"+typeId+".htm'><font color='#FF6700'>"+typeName+"</font></a>&nbsp;&nbsp;>&nbsp;&nbsp;"+newsName);
		return navCode.toString();
	}
}
