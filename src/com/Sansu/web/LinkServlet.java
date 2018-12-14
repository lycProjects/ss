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
	 * ��������
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
			HttpServletResponse response) throws ServletException, IOException{//ɾ����������
		String linkId=request.getParameter("linkId");
		Connection con=null;
		try{
			con=dbUtil.getCon();
			JSONObject result=new JSONObject();//ʹ��JSon��
			int delNums=linkDao.linkDelete(con, linkId);
			if(delNums>0){
				result.put("success", true);//��ֵ����ʽ
			}else{
				result.put("errorMsg", "ɾ��ʧ��");
			}
			ResponseUtil.write(result, response);//ʹ����ajax����������ʽ����ǰ̨
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
			HttpServletResponse response) throws ServletException, IOException{		//��ѯ������������
		Connection con=null;
		try{
			con=dbUtil.getCon();
			List<Link> linkBackList=linkDao.linkList(con, "select * from t_link order by orderNum");
			request.setAttribute("linkBackList", linkBackList);
			request.setAttribute("navCode", NavUtil.genNewsManageNavigation("�������ӹ���", "��������ά��"));
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
			throws ServletException, IOException{			//���»�����ӵ� Ԥ���ı�������
		String linkId=request.getParameter("linkId");//���µĻ�����Ҫ��ȡ�������
		Connection con=null;
		try{
			con=dbUtil.getCon();
			if(StringUtil.isNotEmpty(linkId)){//��Ϊ�գ����²����������Ƕ�ȡ��Ϣ���ı���
				Link link=linkDao.getLinkById(con, linkId);
				request.setAttribute("link", link);
			}
			
			if(StringUtil.isNotEmpty(linkId)){//���ɵ���
				request.setAttribute("navCode", NavUtil.genNewsManageNavigation("�������ӹ���", "���������޸�"));
			}else{
				request.setAttribute("navCode", NavUtil.genNewsManageNavigation("�������ӹ���", "�����������"));
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
			throws ServletException, IOException {			//������������
		Connection con=null;
		String linkId=request.getParameter("linkId");
		String linkName=request.getParameter("linkName");
		String linkUrl=request.getParameter("linkUrl");
		String linkEmail=request.getParameter("linkEmail");
		String orderNum=request.getParameter("orderNum");
		
		Link link=new Link(linkName, linkUrl, linkEmail, Integer.parseInt(orderNum));
		
		if(StringUtil.isNotEmpty(linkId)){//��Ϊ�գ����²���
			link.setLinkId(Integer.parseInt(linkId));
		}
		try{
			con=dbUtil.getCon();
			if(StringUtil.isNotEmpty(linkId)){//��Ϊ�գ����²���
				linkDao.linkUpdate(con, link);
			}else{
				linkDao.linkAdd(con, link);//Ϊ�գ���Ӳ���
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
