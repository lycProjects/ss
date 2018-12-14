package com.Sansu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Sansu.model.News;
import com.Sansu.model.PageBean;
import com.Sansu.util.DateUtil;
import com.Sansu.util.PropertiesUtil;
import com.Sansu.util.StringUtil;

public class NewsDao {

	public List<News> newsList(Connection con,String sql)throws Exception{
		List<News> newsList=new ArrayList<News>();
		PreparedStatement pstmt=con.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			News news=new News();
			news.setNewsId(rs.getInt("newsId"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setPublishDate(DateUtil.formatString(rs.getString("publishDate"), "yyyy-MM-dd HH:mm:ss"));
			news.setAuthor(rs.getString("author"));
			news.setTypeId(rs.getInt("typeId"));
			news.setClick(rs.getInt("click"));
			news.setIsHead(rs.getInt("isHead"));
			news.setImageName(PropertiesUtil.getValue("userImage")+rs.getString("imageName"));
			news.setIsHot(rs.getInt("isHot"));
			newsList.add(news);
		}
		return newsList;
	}
	
	public List<News> newsList(Connection con,News s_news,PageBean pageBean,String s_bPublishDate,String s_aPublishDate)throws Exception{//获取新闻内容
		List<News> newsList=new ArrayList<News>();
		StringBuffer sb=new StringBuffer("select * from t_news t1,t_newsType t2 where t1.typeId=t2.newsTypeId ");//sql拼接获取所有新闻的 属性
		if(s_news.getTypeId()!=-1){//根据新闻中的类型 获取所有新闻
			sb.append(" and t1.typeId="+s_news.getTypeId());
		}
		if(StringUtil.isNotEmpty(s_news.getTitle())){
			sb.append(" and t1.title like '%"+s_news.getTitle()+"%'");
		}
		if(StringUtil.isNotEmpty(s_news.getContent())){
			sb.append(" and t1.content like '%"+s_news.getContent()+"%'");
		}
		if(StringUtil.isNotEmpty(s_bPublishDate)){
			sb.append(" and TO_DAYS(t1.publishDate)>=TO_DAYS('"+s_bPublishDate+"')");
		}
		if(StringUtil.isNotEmpty(s_aPublishDate)){
			sb.append(" and TO_DAYS(t1.publishDate)<=TO_DAYS('"+s_aPublishDate+"')");
		}
		sb.append(" order by t1.publishDate desc ");
		if(pageBean!=null){//当前页的前一页（getStart）也是索引开始，到当前页的容量（getPageSize）
			sb.append(" limit "+pageBean.getStart()+","+pageBean.getPageSize());
		}
		PreparedStatement pstmt=con.prepareStatement(sb.toString());
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			News news=new News();
			news.setNewsId(rs.getInt("newsId"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setPublishDate(DateUtil.formatString(rs.getString("publishDate"), "yyyy-MM-dd HH:mm:ss"));
			news.setAuthor(rs.getString("author"));
			news.setTypeId(rs.getInt("typeId"));
			news.setTypeName(rs.getString("typeName"));
			news.setClick(rs.getInt("click"));
			news.setIsHead(rs.getInt("isHead"));
			news.setImageName(PropertiesUtil.getValue("userImage")+rs.getString("imageName"));
			news.setIsHot(rs.getInt("isHot"));
			newsList.add(news);
		}
		return newsList;
	}
	
	public int newsCount(Connection con,News s_news,String s_bPublishDate,String s_aPublishDate)throws Exception{//新闻总记 录数
		StringBuffer sb=new StringBuffer("select count(*) as total from t_news");
		if(s_news.getTypeId()!=-1){
			sb.append(" and typeId="+s_news.getTypeId());
		}
		if(StringUtil.isNotEmpty(s_news.getTitle())){
			sb.append(" and title like '%"+s_news.getTitle()+"%'");
		}
		if(StringUtil.isNotEmpty(s_news.getContent())){
			sb.append(" and content like '%"+s_news.getTitle()+"%'");
		}
		if(StringUtil.isNotEmpty(s_bPublishDate)){
			sb.append(" and TO_DAYS(publishDate)>=TO_DAYS('"+s_bPublishDate+"')");
		}
		if(StringUtil.isNotEmpty(s_aPublishDate)){
			sb.append(" and TO_DAYS(publishDate)<=TO_DAYS('"+s_aPublishDate+"')");
		}
		PreparedStatement pstmt=con.prepareStatement(sb.toString().replaceFirst("and", "where"));
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			return rs.getInt("total");//返回符合条件的记录数
		}else{
			return 0;
		}
	}
	
	public News getNewsById(Connection con,String newsId)throws Exception{//根据新闻id获取 新闻具体内容
		String sql="select * from t_news t1,t_newsType t2 where t1.typeId=t2.newsTypeId and t1.newsId=?";//联合查询，获取两个表中的所有信息，比较方便
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsId);//对?赋值
		ResultSet rs=pstmt.executeQuery();
		News news=new News();
		if(rs.next()){
			news.setNewsId(rs.getInt("newsId"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setPublishDate(DateUtil.formatString(rs.getString("publishDate"), "yyyy-MM-dd HH:mm:ss"));
			news.setAuthor(rs.getString("author"));
			news.setTypeName(rs.getString("typeName"));
			news.setTypeId(rs.getInt("typeId"));
			news.setClick(rs.getInt("click"));
			news.setIsHead(rs.getInt("isHead"));
			news.setIsImage(rs.getInt("isImage"));
			news.setImageName(PropertiesUtil.getValue("userImage")+rs.getString("imageName"));
			news.setIsHot(rs.getInt("isHot"));
		}
		return news;
	}
	
	public int newsClick(Connection con,String newsId)throws Exception{	//新闻阅读+1
		String sql="update t_news set click=click+1 where newsId=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsId);
		return pstmt.executeUpdate();
	}
	
	public List<News> getUpAndDownPageId(Connection con,String newsId)throws Exception{ //获取当前新闻上下篇
		List<News> upAndDownPage=new ArrayList<News>();
		String sql="SELECT * FROM t_news WHERE newsId<? ORDER BY newsId DESC LIMIT 1;";	//降序 上一篇
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsId);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			upAndDownPage.add(new News(rs.getInt("newsId"),rs.getString("title")));
		}else{
			upAndDownPage.add(new News(-1,""));
		}
		
		sql="SELECT * FROM t_news WHERE newsId>? ORDER BY newsId ASC LIMIT 1;";		//升序 下一篇
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsId);
		rs=pstmt.executeQuery();
		if(rs.next()){
			upAndDownPage.add(new News(rs.getInt("newsId"),rs.getString("title")));
		}else{
			upAndDownPage.add(new News(-1,""));
		}
		return upAndDownPage;//返回一个List带2个News对象;  add每次只能加一个属性(对象)
	}
	
	
	public boolean existNewsWithNewsTypeId(Connection con,String typeId)throws Exception{//根据类型查看新闻类型下  是否存在新闻
		String sql="select * from t_news where typeId=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, typeId);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			return true;
		}else{
			return false;
		}
	}
	
	public int newsAdd(Connection con,News news)throws Exception{	//后台新闻添加
		String sql="insert into t_news values(null,?,?,now(),?,?,0,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, news.getTitle());//1,2,3..对应的是第几个问号
		pstmt.setString(2, news.getContent());
		pstmt.setString(3, news.getAuthor());
		pstmt.setInt(4, news.getTypeId());
		pstmt.setInt(5, news.getIsHead());
		pstmt.setInt(6, news.getIsImage());
		pstmt.setString(7, news.getImageName());
		pstmt.setInt(8, news.getIsHot());
		return pstmt.executeUpdate();
	}
	
	public int newsUpdate(Connection con,News news)throws Exception{//后台新闻修改
		String sql="update t_news set title=?,content=?,author=?,typeId=?,isHead=?,isImage=?,imageName=?,isHot=? where newsId=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, news.getTitle());
		pstmt.setString(2, news.getContent());
		pstmt.setString(3, news.getAuthor());
		pstmt.setInt(4, news.getTypeId());
		pstmt.setInt(5, news.getIsHead());
		pstmt.setInt(6, news.getIsImage());
		pstmt.setString(7, news.getImageName());
		pstmt.setInt(8, news.getIsHot());
		pstmt.setInt(9, news.getNewsId());
		return pstmt.executeUpdate();
	}
	

	public int newsDelete(Connection con,String newsId)throws Exception{//后台新闻删除
		String sql="delete from t_news where newsId=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsId);
		return pstmt.executeUpdate();
	}
}