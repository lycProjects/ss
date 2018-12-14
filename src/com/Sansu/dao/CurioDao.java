package com.Sansu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Sansu.model.Curio;
import com.Sansu.model.News;
import com.Sansu.util.DateUtil;
import com.Sansu.util.PropertiesUtil;


public class CurioDao {
	public static Curio check(Connection con,String sql) throws SQLException {
		PreparedStatement pstmt=con.prepareStatement(sql);
		Curio curio=new Curio();
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			curio.setCurId(rs.getInt("curId"));
			curio.setCurNum(rs.getString("curNum"));
			curio.setCurName(rs.getString("curName"));
			curio.setPrice(rs.getString("price"));
			curio.setModel(rs.getString("model"));
			curio.setCurYear(rs.getString("curYear"));
			curio.setCurType(rs.getString("curType"));
			curio.setImageName(rs.getString("imageName"));
			curio.setCurHot(rs.getInt("curHot"));	
			curio.setImageNamea(rs.getString("imageNamea"));
			curio.setImageNameb(rs.getString("imageNameb"));
			curio.setImageNamec(rs.getString("imageNamec"));
		}
		return curio;	
	}

}
