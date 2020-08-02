package wjs.blog.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import wjs.blog.dao.IUserDao;
import wjs.blog.domain.User;
import wjs.blog.utils.JDBCUtil;



public class UserDaoJDBCImpl implements IUserDao {

	@Override
	public int add(User user) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int n = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "insert into user (username,password,name,sex,email,tel)values(?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			
			ps.setString(3, user.getName());
			ps.setString(4, user.getSex());
			
			////////////////////////////
			//ps.setString(5, user.getDate());
			////////////////////////////
			
			ps.setString(5, user.getEmail());
			ps.setString(6, user.getTel());
			
			n = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}
	
	@Override
	public User findByName(String username) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		User user = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * from user where username = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			
			rs = ps.executeQuery();
			

			if(rs != null){
				while(rs.next()){
					user = new User();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					user.setName(rs.getString("name"));	
					user.setSex(rs.getString("sex"));
					user.setEmail(rs.getString("email"));
					user.setTel(rs.getString("tel"));
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return user;
	
	}
	
	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<User> userList = null;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * from user";
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			

			if(rs != null){
				boolean flag = true;
				while(rs.next()){
					if(flag){
						userList = new ArrayList<User>();
						flag = false;
					}
						
					User user = new User();
					
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					user.setName(rs.getString("name"));
					user.setSex(rs.getString("sex"));
					user.setEmail(rs.getString("Email"));
					user.setTel(rs.getString("tel"));
					
					userList.add(user);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return userList;
	}

	@Override
	public int findTotalCount() {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int n = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select count(*) as totalcount from user";
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			if(rs != null){
				while(rs.next()){
					n = rs.getInt("totalcount");
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}

	@Override
	public List<User> findOnePage(int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<User> userList = null;
		

		int startRecordNo = (pageIndex - 1) * pageSize;
		
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * from user limit ?,?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, startRecordNo);
			ps.setInt(2, pageSize);
			
			rs = ps.executeQuery();
			

			if(rs != null){
				boolean flag = true;
				while(rs.next()){
					if(flag){
						userList = new ArrayList<User>();
						flag = false;
					}
						
					User user = new User();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setPassword(rs.getString("password"));
					
					user.setName(rs.getString("name"));
					user.setSex(rs.getString("sex"));
					user.setEmail(rs.getString("email"));
					user.setTel(rs.getString("tel"));
					
					userList.add(user);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return userList;
	}

	@Override
	public int deleteById(int id) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int n = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "delete from user where id = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			n = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}
	
	
	
	public int ModifyUser(int id, User user) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int n = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "update user set username=?,password=?,name=?,sex=?,email=?,tel=? where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getName());
			ps.setString(4, user.getSex());
			ps.setString(5, user.getEmail());
			ps.setString(6, user.getTel());	
			ps.setInt(7, id);
			
			
			n = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				Connection conn = null;
				PreparedStatement ps = null;
				ResultSet rs = null;
				
				User user = null;
				try {
					conn = JDBCUtil.getConnection();
					String sql = "select * from user where id = ?";
					ps = conn.prepareStatement(sql);
					ps.setInt(1, id);
					
					rs = ps.executeQuery();
					

					if(rs != null){
						while(rs.next()){
							user = new User();
							user.setId(rs.getInt("id"));
							user.setUsername(rs.getString("username"));
							user.setPassword(rs.getString("password"));
							user.setName(rs.getString("name"));	
							user.setSex(rs.getString("sex"));
							user.setEmail(rs.getString("email"));
							user.setTel(rs.getString("tel"));
						}
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				return user;
	}

	@Override
	public int modify(User user, String username) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int n = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "update user set password=? where username=?";
			ps = conn.prepareStatement(sql);
						
			ps.setString(1, user.getPassword());
			ps.setString(2, user.getUsername());
			
			n = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return n;
	}

	@Override
	public int modify(int id, User user) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int n = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "update user set password=? where username=?";
			ps = conn.prepareStatement(sql);
						
			ps.setString(1, user.getPassword());
			ps.setString(2, user.getUsername());
			
			n = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return n;
	}


}
