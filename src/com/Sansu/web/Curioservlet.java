package com.Sansu.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Curioservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Curioservlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request,response);
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		System.out.println(action);
		if("curiotoy".equals(action)) {
			request.setAttribute("mainPage", "curios/cq_1.jsp");
			//response.sendRedirect("foreground/newsTemp.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}else if("curiotoya".equals(action)) {
			request.setAttribute("mainPage", "curios/cq_2.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}else if("jade".equals(action)) {
			request.setAttribute("mainPage", "curios/jade.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}
		else if("paint".equals(action)) {
			request.setAttribute("mainPage", "curios/paint.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}
		else if("othercurio".equals(action)) {
			request.setAttribute("mainPage", "curios/othercurio.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}else if("othercuriob".equals(action)) {
			request.setAttribute("mainPage", "curios/othercurio_2.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}else if("expertone".equals(action)) {
			request.setAttribute("mainPage", "curios/expertone.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}else if("curioview".equals(action)) {
			request.setAttribute("mainPage", "famous/homepage.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}
	}
	
/*	private void openCurio(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException {
		//request.setAttribute("mainPage","curio/cq_1.jsp");
		request.setAttribute("mainPage", "curios/cq_1.jsp");
		request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		
	}*/

}
