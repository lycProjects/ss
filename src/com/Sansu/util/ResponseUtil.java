package com.Sansu.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;


public class ResponseUtil {
//页面文档格式
	public static void write(Object o,HttpServletResponse response)throws Exception{//ajax结果返回前台，以流的形式
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println(o.toString());
		out.flush();
		out.close();
	}
}
