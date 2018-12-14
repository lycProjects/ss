package com.Sansu.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Sansu.model.News;
import com.Sansu.model.PageBean;
import com.Sansu.util.NavUtil;
import com.Sansu.util.PageUtil;
import com.Sansu.util.PropertiesUtil;

public class BusinessServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		if("openAccount".equals(action)){//交友开户
			this.openAccount(request, response);
		}
		else if("ourForum".equals(action)){//财富论坛
			this.ourForum(request,response);
		}
		else if("stockMarket".equals(action)){//股市风云
			this.stockMarket(request, response);
		}
		else if("adNews".equals(action)){//广告发布
			this.adNews(request,response);
		}
		else if("ourTeam".equals(action)){//联系我们
			this.ourTeam(request,response);
		}
	}
	private void ourForum(HttpServletRequest request,
			HttpServletResponse response) {
		
		
	}

	private void adNews(HttpServletRequest request, HttpServletResponse response) {
		
		
	}

	private void ourTeam(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("mainPage", "body/contact.jsp");

		request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		
	}
	private void stockMarket(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("mainPage", "body/iframeShow.jsp");

		request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		
	}

	private void openAccount(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("mainPage", "body/iframe.jsp");

		request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		this.doPost(request, response);
	}

}
