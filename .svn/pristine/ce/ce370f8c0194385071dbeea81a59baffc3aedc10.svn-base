package com.Sansu.web;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import com.Sansu.dao.CommentDao;
import com.Sansu.model.Comment;
import com.Sansu.model.PageBean;
import com.Sansu.util.DbUtil;
import com.Sansu.util.NavUtil;
import com.Sansu.util.PageUtil;
import com.Sansu.util.PropertiesUtil;
import com.Sansu.util.ResponseUtil;
import com.Sansu.util.StringUtil;

public class CommentServlet extends HttpServlet {

	/**
	 * 新闻评论各种操作
	 */
	private static final long serialVersionUID = 1L;

	DbUtil dbUtil = new DbUtil();
	CommentDao commentDao = new CommentDao();

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		if ("save".equals(action)) {
			commentSave(request, response);
		} else if ("backList".equals(action)) {
			commentBackList(request, response);
		} else if ("delete".equals(action)) {
			commentDelete(request, response);
		}

	}

	private void commentSave(HttpServletRequest request,
			HttpServletResponse response)// 新闻评论的 添加
			throws ServletException, IOException {
		String newsId = request.getParameter("newsId");
		String content = request.getParameter("content");
		String userIP = request.getRemoteAddr();// 获取用户IP
		Comment comment = new Comment(Integer.parseInt(newsId), content, userIP);
		Connection con = null;
		try {
			con = dbUtil.getCon();
			commentDao.commentAdd(con, comment);
			/*request.getRequestDispatcher("news?action=show&newsId=" + newsId)
					.forward(request, response);*/
			response.sendRedirect(request.getContextPath()+"/show/" + newsId+".html");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	private void commentBackList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException { // 新闻评论的删除
		String s_bCommentDate = request.getParameter("s_bCommentDate");
		String s_aCommentDate = request.getParameter("s_aCommentDate");
		String page = request.getParameter("page");// 当前页

		HttpSession session = request.getSession();
		if (StringUtil.isEmpty(page)) {
			page = "1";// 第一次进入评论页
			session.setAttribute("s_bCommentDate", s_bCommentDate);// 不是选择时间段的话此处为空
			session.setAttribute("s_aCommentDate", s_aCommentDate);
		} else {// 上、下页
			s_bCommentDate = (String) session.getAttribute("s_bCommentDate");// 如果第一次没选择时间段，则这个也是空，如果第一个选择时间段，上下页则会再次获取到
			s_aCommentDate = (String) session.getAttribute("s_aCommentDate");
		}
		Connection con = null;
		try {
			con = dbUtil.getCon();
			// new Comment()有点多余
			int total = commentDao.commentCount(con, new Comment(),
					s_bCommentDate, s_aCommentDate);// 总记录数
			// 封装的上下页，返回一个样式，其中a标签控制+1或者-1
			String pageCode = PageUtil.getPagationBackground(request.getContextPath()
					+ "/comment?action=backList", total,
					Integer.parseInt(page),
					Integer.parseInt(PropertiesUtil.getValue("backPageSize")));
			PageBean pageBean = new PageBean(Integer.parseInt(page),
					Integer.parseInt(PropertiesUtil.getValue("backPageSize")));
			List<Comment> commentBackList = commentDao.commentList(con,
					new Comment(), pageBean, s_bCommentDate, s_aCommentDate);// 将当前页，页容量，起始时间，结束时间传入获得该页（一页）的所有信息
			request.setAttribute("pageCode", pageCode);
			request.setAttribute("commentBackList", commentBackList);
			request.setAttribute("navCode",
					NavUtil.genNewsManageNavigation("新闻评论管理", "新闻评论维护"));
			request.setAttribute("mainPage",
					"/background/comment/commentList.jsp");
			request.getRequestDispatcher("/background/mainTemp.jsp").forward(
					request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void commentDelete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {// 删除评论
		String commentIds = request.getParameter("commentIds");
		Connection con = null;
		try {
			con = dbUtil.getCon();
			JSONObject result = new JSONObject();
			int delNums = commentDao.commentDelete(con, commentIds);
			if (delNums > 0) {
				result.put("success", true);
				result.put("delNums", delNums);
			} else {
				result.put("errorMsg", "删除失败");
			}
			ResponseUtil.write(result, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
