package wjs.blog.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import wjs.blog.domain.VC;
import wjs.blog.utils.JDBCUtil;

public class VcDaoJDBCImpl {
	public int add(VC vc) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int n = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "insert into vc (vcount)values(?)";
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1,vc.getVcount());
						
			n = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}
}
