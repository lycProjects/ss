package com.Sansu.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;


public class ResponseUtil {
//ҳ���ĵ���ʽ
	public static void write(Object o,HttpServletResponse response)throws Exception{//ajax�������ǰ̨����������ʽ
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println(o.toString());
		out.flush();
		out.close();
	}
}
