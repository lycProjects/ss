package com.Sansu.web;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import com.Sansu.util.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.Sansu.dao.CommentDao;
import com.Sansu.dao.CurioDao;
import com.Sansu.dao.NewsDao;
import com.Sansu.dao.NewsTypeDao;
import com.Sansu.model.Comment;
import com.Sansu.model.Curio;
import com.Sansu.model.News;
import com.Sansu.model.NewsType;
import com.Sansu.model.PageBean;
import com.Sansu.util.DateUtil;
import com.Sansu.util.DbUtil;
import com.Sansu.util.LuceneUtil;
import com.Sansu.util.NavUtil;
import com.Sansu.util.PageUtil;
import com.Sansu.util.PropertiesUtil;
import com.Sansu.util.ResponseUtil;
import com.Sansu.util.StringUtil;

public class NewsServlet extends HttpServlet{

	/**
	 * 新闻等各种处理
	 */
	private static final long serialVersionUID = 1L;
	
	DbUtil dbUtil=new DbUtil();
	NewsDao newsDao=new NewsDao();
	NewsTypeDao newsTypeDao=new NewsTypeDao();
	CommentDao commentDao=new CommentDao();
	CurioDao curioDao=new CurioDao();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		System.out.println(action);
		if("list".equals(action)){
			this.newsList(request, response);
		}else if("show".equals(action)){
			this.newsShow(request, response);
		}else if("search".equals(action)){
				this.newsSearch(request,response);
		}else if("Lusearch".equals(action)){
			this.newsLusearch(request,response);
		}else if("curioshow".equals(action)){
			this.newscurioShow(request,response);
		}
		
		//后台开始，更新、添加	
		else if("preSave".equals(action)){
			this.newsPreSave(request, response);
		}else if("save".equals(action)){
		//后台查询、删除	
			this.newsSave(request, response);
		}else if("backList".equals(action)){
			this.newsBackList(request,response);
		}else if("delete".equals(action)){
			this.newsDelete(request,response);
		}
		
	}
	
	
	private void newsLusearch(HttpServletRequest request,
			HttpServletResponse response) {
		String searchId=request.getParameter("searchId");
		String searchText=request.getParameter("searchText");
		System.out.println("->"+searchId+searchText);
		News s_news=new News();
		String page=request.getParameter("page");//把记录数放在链接参数里
		HttpSession session=request.getSession();
		if(StringUtil.isEmpty(page)){			//第一次进来查看置为1
			page="1";
			session.setAttribute("searchId", searchId);
			session.setAttribute("searchText", searchText);
			if("1".equals(searchId)){
				s_news.setTitle(searchText);//新闻标题搜索
			}else if("2".equals(searchId)) {
				s_news.setContent(searchText);//新闻内容搜索
			}
			session.setAttribute("s_news", s_news);
		}else{//特定查询时间段后上下也，这样保证时间戳的文本框信息不消失
			searchId=(String) session.getAttribute("searchId");
			searchText=(String) session.getAttribute("searchText");
			s_news=(News) session.getAttribute("s_news");
		}
		Connection con=null;
		
		try{
			long start = System.currentTimeMillis();
			con=dbUtil.getCon();
			List<News> newList = LuceneUtil.luseach(con, searchText);
			System.out.println("-->"+newList.size());
			int totalNum=newList.size();
			PageBean pageBean=new PageBean(Integer.parseInt(page),Integer.parseInt(PropertiesUtil.getValue("pageSize"))); //当前页，每页新闻容量
			List<News> searchNewsListWithType = NewsServlet.getListByDb(newList,pageBean,totalNum);
			long end = System.currentTimeMillis();
			request.setAttribute("searchNewsListWithType", searchNewsListWithType);//新闻实体List
			request.setAttribute("pageCode", PageUtil.getPagation(request.getContextPath()+"/search", totalNum, Integer.parseInt(page), Integer.parseInt(PropertiesUtil.getValue("pageSize"))));
			request.setAttribute("mainPage", "body/Lusearch.jsp");
			request.setAttribute("searchText", searchText);
			request.setAttribute("timeCost",new DecimalFormat("0.000").format((float)((end - start)/1000.000)));
			request.setAttribute("totalNum", totalNum);
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	public static List<News> getListByDb(List<News> newList,PageBean pageBean,int totalNum){//完整List分批取成List
		List<News> LunewList = new ArrayList<News>();
		if(pageBean.getStart()+pageBean.getPageSize()<totalNum){
			for(int count = pageBean.getStart() ;count < pageBean.getStart()+pageBean.getPageSize();count++){ //不同于limit(从哪开始，获取几个)，for(list)是从哪里开始，到哪里结束
				if(newList.get(count)==null){
				}else {
					LunewList.add(newList.get(count));
				}
				
			}
		}else {
			for(int count = pageBean.getStart() ;count < totalNum; count++){ //不同于limit(从哪开始，获取几个)，for(list)是从哪里开始，到哪里结束
				if(newList.get(count)==null){
				}else {
					LunewList.add(newList.get(count));
				}
			}
		}
		return LunewList;
	}
	private void newsSearch(HttpServletRequest request,
			HttpServletResponse response) {
		String searchId=request.getParameter("searchId");
		String searchText=request.getParameter("searchText");
		News s_news=new News();
		String page=request.getParameter("page");//把记录数放在链接参数里
		HttpSession session=request.getSession();
		if(StringUtil.isEmpty(page)){			//第一次进来查看置为1
			page="1";
			session.setAttribute("searchId", searchId);//有可能是特定时间段查询
			session.setAttribute("searchText", searchText);
			if("1".equals(searchId)){
				s_news.setTitle(searchText);//新闻标题搜索
			}else if("2".equals(searchId)) {
				s_news.setContent(searchText);//新闻内容搜索
			}
			session.setAttribute("s_news", s_news);
			
		}else{//特定查询时间段后上下也，这样保证时间戳的文本框信息不消失
			searchId=(String) session.getAttribute("searchId");
			searchText=(String) session.getAttribute("searchText");
			s_news=(News) session.getAttribute("s_news");
			
		}
		Connection con=null;
	
	/*	if(StringUtil.isNotEmpty(searchId)){
			if("1".equals(searchId)){
				s_news.setTitle(searchText);//新闻标题搜索
			}else if("2".equals(searchId)) {
				s_news.setContent(searchText);//新闻内容搜索
			}
		}*/
		/*if("".equals(s_news.getContent())||"".equals(s_news.getTitle())){
			request.setAttribute("s_news", s_news);//存放内置对象
		}*/
		try{
			con=dbUtil.getCon();
			
			int totalNum=newsDao.newsCount(con, s_news, null, null);
			
			PageBean pageBean=new PageBean(Integer.parseInt(page),Integer.parseInt(PropertiesUtil.getValue("pageSize"))); //当前页，每页新闻容量
			List<News> searchNewsListWithType=newsDao.newsList(con, s_news, pageBean,null,null);//符合要求的 新闻List
			
			request.setAttribute("searchNewsListWithType", searchNewsListWithType);//新闻实体List
			
			request.setAttribute("pageCode", PageUtil.getPagation(request.getContextPath()+"/search", totalNum, Integer.parseInt(page), Integer.parseInt(PropertiesUtil.getValue("pageSize"))));
			/*request.setAttribute("content", "body/search.jsp");*/
			request.setAttribute("mainPage", "body/search.jsp");
			request.setAttribute("searchText", searchText);
			request.setAttribute("totalNum", totalNum);
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
			
			/*
			con=dbUtil.getCon();
			int total=newsDao.newsCount(con, s_news, s_bPublishDate, s_aPublishDate);
			String pageCode=PageUtil.getPagation(request.getContextPath()+"/news?action=backList", total, Integer.parseInt(page), Integer.parseInt(PropertiesUtil.getValue("backPageSize")));
			PageBean pageBean=new PageBean(Integer.parseInt(page),Integer.parseInt(PropertiesUtil.getValue("backPageSize")));
			List<News> newsBackList=newsDao.newsList(con, s_news,pageBean,s_bPublishDate,s_aPublishDate);
			request.setAttribute("pageCode", pageCode);
			request.setAttribute("newsBackList", newsBackList);
			request.setAttribute("navCode", NavUtil.genNewsManageNavigation("新闻管理", "新闻维护"));
			request.setAttribute("mainPage", "/background/news/newsList.jsp");
			request.getRequestDispatcher("/background/mainTemp.jsp").forward(request, response);*/
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	private void newsList(HttpServletRequest request, HttpServletResponse response) //获取当前页的新闻
			throws ServletException, IOException {
		
		String typeId=request.getParameter("typeId");//查看新闻，和上下页 都需要此参数，内循环
		String page=request.getParameter("page");//把记录数放在链接参数里

		if(StringUtil.isEmpty(page)){
			page="1"; //新闻当前页
		}
		Connection con=null;
		News s_news=new News();
		if(StringUtil.isNotEmpty(typeId)){
			s_news.setTypeId(Integer.parseInt(typeId));//新闻类别
		}
		try{
			con=dbUtil.getCon();
			String targetUrl = request.getContextPath()+"/list";
			int total=newsDao.newsCount(con, s_news,null,null);
			PageBean pageBean=new PageBean(Integer.parseInt(page),Integer.parseInt(PropertiesUtil.getValue("pageSize"))); //当前页，每页新闻容量
			List<News> newestNewsListWithType=newsDao.newsList(con, s_news, pageBean,null,null);//符合要求的 新闻List
			for (News news : newestNewsListWithType) {
				news.setContent(StringUtil.delHTMLTag(news.getContent()));
			}
			request.setAttribute("newestNewsListWithType", newestNewsListWithType);//新闻实体List
			request.setAttribute("navCode", NavUtil.genNewsListNavigation(newsTypeDao.getNewsTypeById(con, typeId).getTypeName(), typeId));//获取新闻类型Name和新闻类别id
			request.setAttribute("pageCode", PageUtil.getUpAndDownPagation(targetUrl,total, Integer.parseInt(page), Integer.parseInt(PropertiesUtil.getValue("pageSize")), typeId));
	// 	   request.setAttribute("mainPage", "news/newsList.jsp");
	 	 	request.setAttribute("mainPage", "news/notice.jsp");
			request.setAttribute("id",typeId );
			
			
			String sql="select * from t_news where isImage=1 order by publishDate desc limit 0,8"; //图片新闻
			List<News> imageNewsList=newsDao.newsList(con, sql);
			request.setAttribute("imageNewsList", imageNewsList);
			
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	private void newscurioShow(HttpServletRequest request,
			HttpServletResponse response) throws IOException,ServletException {
		String action =request.getParameter("action");
		String curioId=request.getParameter("newsId");
		Connection con=null;
		Curio cur=new Curio();
		try {
			con=dbUtil.getCon();
			String sql="select * from t_curio where imageName='"+curioId+"'";
			cur=curioDao.check(con, sql);
			request.setAttribute("curio", cur);
			request.setAttribute("mainPage", "curios/curiosecond.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
			//request.getRequestDispatcher("/curiosecond.jsp").forward(request, response);
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
				dbUtil.closeCon(con);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		
	}
	private void newsShow(HttpServletRequest request, HttpServletResponse response) //显示新闻具体内容
			throws ServletException, IOException {
		String newsId=request.getParameter("newsId");
		Connection con=null;
		try{
			con=dbUtil.getCon();
			newsDao.newsClick(con, newsId);//阅读+1
			News news=newsDao.getNewsById(con, newsId);
			String targetUrl = request.getContextPath();
			Comment s_comment=new Comment();
			s_comment.setNewsId(Integer.parseInt(newsId));
			List<Comment> commentList=commentDao.commentList(con, s_comment,null,null,null);//新闻评论查询
			request.setAttribute("commentList", commentList);
			request.setAttribute("news", news);
			request.setAttribute("pageCode", this.genUpAndDownPageCode(targetUrl,newsDao.getUpAndDownPageId(con, newsId)));
			request.setAttribute("navCode", NavUtil.genNewsNavigation(news.getTypeName(), news.getTypeId()+"",news.getTitle()));
			
			String sql="select * from t_news order by click desc limit 0,8";
			List<News> hotNewsList=newsDao.newsList(con, sql);
			request.setAttribute("hotNewsList", hotNewsList);//热点新闻
			
			sql="select * from t_news  order by publishDate desc limit 0,8 ";
			List<News> newestNewsList=newsDao.newsList(con, sql);
			request.setAttribute("newestNewsList", newestNewsList);//最新新闻，根据时间
			
			request.setAttribute("mainPage", "news/newsShow.jsp");
			request.getRequestDispatcher("foreground/newsTemp.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	private String genUpAndDownPageCode(String targetUrl,List<News> upAndDownPage){ 	//新闻内容页中 上一篇和下一篇
		News upNews=upAndDownPage.get(0);//上一篇
		News downNews=upAndDownPage.get(1);//下一篇
		StringBuffer pageCode=new StringBuffer();
		if(upNews.getNewsId()==-1){
			pageCode.append("<p>上一篇：没有了</p>");
		}else{
			pageCode.append("<p>上一篇：<a href='"+targetUrl+"/show/"+upNews.getNewsId()+".html'>"+upNews.getTitle()+"</a></p>");
		}
		if(downNews.getNewsId()==-1){
			pageCode.append("<p>下一篇：没有了</p>");
		}else{
			pageCode.append("<p>下一篇：<a href='"+targetUrl+"/show/"+downNews.getNewsId()+".html'>"+downNews.getTitle()+"</a></p>");
		}
		return pageCode.toString();
	}
	
	
	private void newsPreSave(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {//预保存，更新和添加
		String newsId=request.getParameter("newsId");
		Connection con=null;
		try{
			con=dbUtil.getCon();
			if(StringUtil.isNotEmpty(newsId)){//newsId不为空，更新操作
				News news=newsDao.getNewsById(con, newsId);
				request.setAttribute("news", news);//存放内置对象
			}
			List<NewsType> newsTypeList=newsTypeDao.newsTypeList(con);
			request.setAttribute("newsTypeList", newsTypeList);//获取所有的新闻类别
			
			if(StringUtil.isNotEmpty(newsId)){//newsId不为空，不为空，更新修改
				request.setAttribute("navCode", NavUtil.genNewsManageNavigation("新闻管理", "新闻修改"));				
			}else{//为空新闻添加
				request.setAttribute("navCode", NavUtil.genNewsManageNavigation("新闻管理", "新闻添加"));				
			}
			request.setAttribute("mainPage", "/background/news/newsSave.jsp");
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
	
	private void newsSave(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		//新闻保存
		//从前台获取 表单和上传的文件，以二进制流传到到List中
		FileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload upload=new ServletFileUpload(factory);
		List<FileItem> items=null;
		try {
			items=upload.parseRequest(request);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//使用迭代器遍历
		Iterator itr=items.iterator();
		News news=new News();
		while(itr.hasNext()){	//当有下一个（从第一个开始）
			FileItem item=(FileItem) itr.next();//next当前第一个的值
			if(item.isFormField()){//是普通表单
				String fieldName=item.getFieldName();//定义fieldName用于返回表单标签name属性的值
				if("newsId".equals(fieldName)){
					if(StringUtil.isNotEmpty(item.getString("utf-8"))){//不为空的话，将二进制流转化成utf-8
						news.setNewsId(Integer.parseInt(item.getString("utf-8")));
					}
				}
				if("title".equals(fieldName)){
					news.setTitle(item.getString("utf-8"));
				}
				if("content".equals(fieldName)){
					news.setContent(item.getString("utf-8"));
				}
				if("author".equals(fieldName)){
					news.setAuthor(item.getString("utf-8"));
				}
				if("typeId".equals(fieldName)){
					news.setTypeId(Integer.parseInt(item.getString("utf-8")));
				}
				if("isHead".equals(fieldName)){
					news.setIsHead(Integer.parseInt(item.getString("utf-8")));
				}
				if("isImage".equals(fieldName)){
					news.setIsImage(Integer.parseInt(item.getString("utf-8")));
				}
				if("isHot".equals(fieldName)){
					news.setIsHot(Integer.parseInt(item.getString("utf-8")));
				}
				if("imageName".equals(fieldName)&&news.getImageName()==null){
					if(StringUtil.isNotEmpty(item.getString("utf-8"))){
						news.setImageName(item.getString("utf-8").split("/")[1]);
					}
				}
			}else if(!"".equals(item.getName())){//幻灯提交不为空
				try {
					//自己添加
					String fileName = item.getName().toLowerCase();//获取上传文件名
					String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();//获取文件名后缀
					
					String imageName=DateUtil.getCurrentDateStr();////获取当前yyyyMMddhhmmss转成字符串
					

					//自己添加
					File file=new File(getServletContext().getRealPath("/").replace("\\","/")+"userImage/"+imageName+"."+fileExt);//保存图片的地址以及信息
					news.setImageName(imageName+"."+fileExt);
					
					/*news.setImageName(imageName+"."+item.getName().split("\\.")[1]);
					String filePath=PropertiesUtil.getValue("imagePath")+imageName+"."+item.getName().split("\\.")[1];*/
					item.write(file);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		
		Connection con=null;
		try{
			con=dbUtil.getCon();
			if(news.getNewsId()!=0){
				newsDao.newsUpdate(con, news);
			}else{
				newsDao.newsAdd(con, news);
			}
			request.getRequestDispatcher("/news?action=backList").forward(request, response);
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
	
	private void newsBackList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String s_bPublishDate=request.getParameter("s_bPublishDate");//可查可存
		String s_aPublishDate=request.getParameter("s_aPublishDate");
		String s_title=request.getParameter("s_title");//可查可存
		String page=request.getParameter("page");
		
		HttpSession session=request.getSession();
		if(StringUtil.isEmpty(page)){//第一次进来查看置为1
			page="1";
			session.setAttribute("s_bPublishDate", s_bPublishDate);//有可能是特定时间段查询
			session.setAttribute("s_aPublishDate", s_aPublishDate);
			session.setAttribute("s_title", s_title);
		}else{//特定查询时间段后上下也，这样保证时间戳的文本框信息不消失
			s_bPublishDate=(String) session.getAttribute("s_bPublishDate");
			s_aPublishDate=(String) session.getAttribute("s_aPublishDate");
			s_title=(String) session.getAttribute("s_title");
		}
		Connection con=null;
		News s_news=new News();
		if(StringUtil.isNotEmpty(s_title)){
			s_news.setTitle(s_title);
		}
		try{
			con=dbUtil.getCon();
			int total=newsDao.newsCount(con, s_news, s_bPublishDate, s_aPublishDate);
			String pageCode=PageUtil.getPagationBackground(request.getContextPath()+"/news?action=backList", total, Integer.parseInt(page), Integer.parseInt(PropertiesUtil.getValue("backPageSize")));
			PageBean pageBean=new PageBean(Integer.parseInt(page),Integer.parseInt(PropertiesUtil.getValue("backPageSize")));
			List<News> newsBackList=newsDao.newsList(con, s_news,pageBean,s_bPublishDate,s_aPublishDate);
			request.setAttribute("pageCode", pageCode);
			request.setAttribute("newsBackList", newsBackList);
			request.setAttribute("navCode", NavUtil.genNewsManageNavigation("新闻管理", "新闻维护"));
			request.setAttribute("mainPage", "/background/news/newsList.jsp");
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
	
	private void newsDelete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		String newsId=request.getParameter("newsId");
		Connection con=null;
		boolean delFlag;
		try{
			con=dbUtil.getCon();
			int delNums=newsDao.newsDelete(con, newsId);
			if(delNums==1){
				delFlag=true;
			}else{
				delFlag=false;
			}
			ResponseUtil.write(delFlag, response);
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
