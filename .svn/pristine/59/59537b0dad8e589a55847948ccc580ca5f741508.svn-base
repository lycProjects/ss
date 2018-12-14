package com.Sansu.web;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.Sansu.dao.LinkDao;
import com.Sansu.model.Link;
import com.Sansu.util.DbUtil;
import com.Sansu.util.NavUtil;
import com.Sansu.util.ResponseUtil;
import com.Sansu.util.StringUtil;

public class LinkServlet extends HttpServlet{

	/**
	 * 友情链接
	 */
	private static final long serialVersionUID = 1L;
	
	DbUtil dbUtil=new DbUtil();
	LinkDao linkDao=new LinkDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		if("preSave".equals(action)){
			linkPreSave(request,response);
		}else if("save".equals(action)){
			linkSave(request,response);
		}else if("backList".equals(action)){
			linkBackList(request,response);
		}else if("delete".equals(action)){
			linkDelete(request,response);
		}
		
	}
	
	private void linkDelete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{//删除友情链接
		String linkId=request.getParameter("linkId");
		Connection con=null;
		try{
			con=dbUtil.getCon();
			JSONObject result=new JSONObject();//使用JSon串
			int delNums=linkDao.linkDelete(con, linkId);
			if(delNums>0){
				result.put("success", true);//键值对形式
			}else{
				result.put("errorMsg", "删除失败");
			}
			ResponseUtil.write(result, response);//使用了ajax，以流的形式传到前台
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void linkBackList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{		//查询所有友情链接
		Connection con=null;
		try{
			con=dbUtil.getCon();
			List<Link> linkBackList=linkDao.linkList(con, "select * from t_link order by orderNum");
			request.setAttribute("linkBackList", linkBackList);
			request.setAttribute("navCode", NavUtil.genNewsManageNavigation("友情链接管理", "友情链接维护"));
			request.setAttribute("mainPage", "/background/link/linkList.jsp");
			request.getRequestDispatcher("/background/mainTemp.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void linkPreSave(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{			//更新或者添加的 预览文本框内容
		String linkId=request.getParameter("linkId");//更新的话，需要获取这个参数
		Connection con=null;
		try{
			con=dbUtil.getCon();
			if(StringUtil.isNotEmpty(linkId)){//不为空，更新操作，在这是读取信息到文本框
				Link link=linkDao.getLinkById(con, linkId);
				request.setAttribute("link", link);
			}
			
			if(StringUtil.isNotEmpty(linkId)){//生成导航
				request.setAttribute("navCode", NavUtil.genNewsManageNavigation("友情链接管理", "友情链接修改"));
			}else{
				request.setAttribute("navCode", NavUtil.genNewsManageNavigation("友情链接管理", "友情链接添加"));
			}
			request.setAttribute("mainPage", "/background/link/linkSave.jsp");
			request.getRequestDispatcher("/background/mainTemp.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	private void linkSave(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {			//保存友情链接
		Connection con=null;
		String linkId=request.getParameter("linkId");
		String linkName=request.getParameter("linkName");
		String linkUrl=request.getParameter("linkUrl");
		String linkEmail=request.getParameter("linkEmail");
		String orderNum=request.getParameter("orderNum");
		
		Link link=new Link(linkName, linkUrl, linkEmail, Integer.parseInt(orderNum));
		
		if(StringUtil.isNotEmpty(linkId)){//不为空，更新操作
			link.setLinkId(Integer.parseInt(linkId));
		}
		try{
			con=dbUtil.getCon();
			if(StringUtil.isNotEmpty(linkId)){//不为空，更新操作
				linkDao.linkUpdate(con, link);
			}else{
				linkDao.linkAdd(con, link);//为空，添加操作
			}
			request.getRequestDispatcher("/link?action=backList").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
