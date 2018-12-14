package com.Sansu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Sansu.model.NewsType;
/**
 * 
 *新闻类型所有操作
 *
 */
public class NewsTypeDao {

	public List<NewsType> newsTypeList(Connection con)throws Exception{//获取所有新闻类别
		List<NewsType> newsTypeList=new ArrayList<NewsType>();
		String sql="select * from t_newsType";
		PreparedStatement pstmt=con.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			NewsType newsType=new NewsType();
			newsType.setNewsTypeId(rs.getInt("newsTypeId"));
			newsType.setTypeName(rs.getString("typeName"));
			newsTypeList.add(newsType);
		}
		return newsTypeList;
	}
	
	public NewsType getNewsTypeById(Connection con,String newsTypeId)throws Exception{ //根据新闻类型表中 的类型 获取实体中文名
		NewsType newsType=new NewsType();
		String sql="select * from t_newsType where newsTypeId=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsTypeId);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			newsType.setNewsTypeId(rs.getInt("newsTypeId"));
			newsType.setTypeName(rs.getString("typeName"));
		}
		return newsType;
	}
	
	public int newsTypeAdd(Connection con,NewsType newsType)throws Exception{//添加新闻类别
		String sql="insert into t_newsType values(null,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsType.getTypeName());
		return pstmt.executeUpdate();
	}
	
	public int newsTypeUpdate(Connection con,NewsType newsType)throws Exception{//新闻类别更新
		String sql="update t_newsType set typeName=? where newsTypeId=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsType.getTypeName());
		pstmt.setInt(2, newsType.getNewsTypeId());
		return pstmt.executeUpdate();
	}
	
	public int newsTypeDelete(Connection con,String newsTypeId)throws Exception{//新闻类别删除
		String sql="delete from t_newsType where newsTypeId=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, newsTypeId);
		return pstmt.executeUpdate();
	}
}
