package com.Sansu.web;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Sansu.dao.LinkDao;
import com.Sansu.dao.NewsDao;
import com.Sansu.dao.NewsTypeDao;
import com.Sansu.model.Link;
import com.Sansu.model.News;
import com.Sansu.model.NewsType;
import com.Sansu.util.DbUtil;
import com.Sansu.util.StringUtil;

public class IndexServlet extends HttpServlet{

	/**
	 * .xml到->index
	 */
	private static final long serialVersionUID = 1L;
	
	DbUtil dbUtil=new DbUtil();
	NewsDao newsDao=new NewsDao();
	NewsTypeDao newsTypeDao=new NewsTypeDao();
	LinkDao linkDao=new LinkDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		Connection con=null;
		try{
			con=dbUtil.getCon();
			
			//List<NewsType> newsTypeList=newsTypeDao.newsTypeList(con);//新闻类别
			
			/*String sql="select * from t_news where isImage=1 order by publishDate desc limit 0,5"; //图片新闻
			List<News> imageNewsList=newsDao.newsList(con, sql);
			request.setAttribute("imageNewsList", imageNewsList);
			*/
			String sql="select * from t_news where typeId=1 order by publishDate desc limit 0,10 ";//新闻公告
			List<News> noticeNewsList=newsDao.newsList(con, sql);
			request.setAttribute("noticeNewsList", noticeNewsList);
			
			
			sql="select * from t_news where typeId=2 order by publishDate desc limit 0,10 ";//新闻头条
			List<News> hotSpotNewsList=newsDao.newsList(con, sql);
			request.setAttribute("hotSpotNewsList", hotSpotNewsList);
			
			sql="select * from t_news where typeId=3 order by publishDate desc limit 0,10 ";//藏品信息
			List<News> collectNewsList=newsDao.newsList(con, sql);
			request.setAttribute("collectNewsList", collectNewsList);
			
			sql="select * from t_news where typeId=4 order by publishDate desc limit 0,10 ";//珍贵古董
			List<News> antiqueNewsList=newsDao.newsList(con, sql);
			request.setAttribute("antiqueNewsList", antiqueNewsList);
			
			sql="select * from t_news where typeId=5 order by publishDate desc limit 0,3 ";//经济
			List<News> economyNewsList=newsDao.newsList(con, sql);
			request.setAttribute("economyNewsList", economyNewsList);
			
			sql="select * from t_news where typeId=6 order by publishDate desc limit 0,3 ";//股市
			List<News> stockNewsList=newsDao.newsList(con, sql);
			request.setAttribute("stockNewsList", stockNewsList);
			
			sql="select * from t_news where typeId=7 order by publishDate desc limit 0,3 ";//财富
			List<News> wealthNewsList=newsDao.newsList(con, sql);
			request.setAttribute("wealthNewsList", wealthNewsList);
			
			sql="select * from t_news where typeId=8 order by publishDate desc limit 0,3 ";//字画
			List<News> paintingNewsList=newsDao.newsList(con, sql);
			request.setAttribute("paintingNewsList", paintingNewsList);
			
			sql="select * from t_news where typeId=9 order by publishDate desc limit 0,3 ";//邮币
			List<News> postcardNewsList=newsDao.newsList(con, sql);
			request.setAttribute("postcardNewsList", postcardNewsList);
			
			sql="select * from t_news where typeId=10 order by publishDate desc limit 0,3 ";//古玩
			List<News> curioNewsList=newsDao.newsList(con, sql);
			request.setAttribute("curioNewsList", curioNewsList);
			

			sql="SELECT * FROM t_news WHERE isImage=1 AND typeid=1 ORDER BY publishDate DESC LIMIT 0,1"; //图片新闻
			List<News> imageNewsList1=newsDao.newsList(con, sql);
			request.setAttribute("imageNewsList1", imageNewsList1);
			
			sql="SELECT * FROM t_news WHERE isImage=1 AND typeid=2 ORDER BY publishDate DESC LIMIT 0,1"; //图片新闻
			List<News> imageNewsList2=newsDao.newsList(con, sql);
			request.setAttribute("imageNewsList2", imageNewsList2);
			
			sql="SELECT * FROM t_news WHERE isImage=1 AND typeid=3 ORDER BY publishDate DESC LIMIT 0,1"; //图片新闻
			List<News> imageNewsList3=newsDao.newsList(con, sql);
			request.setAttribute("imageNewsList3", imageNewsList3);
			
			sql="SELECT * FROM t_news WHERE isImage=1 AND typeid=4 ORDER BY publishDate DESC LIMIT 0,1"; //图片新闻
			List<News> imageNewsList4=newsDao.newsList(con, sql);
			request.setAttribute("imageNewsList4", imageNewsList4);
			
			sql="select * from t_link order by orderNum ";//友情链接
			List<Link> linkList=linkDao.linkList(con, sql);
			HttpSession session = request.getSession(); 
			session.setAttribute("linkList", linkList);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
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
