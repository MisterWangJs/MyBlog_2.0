package wjs.blog.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wjs.blog.dao.IpDao;
import wjs.blog.domain.Ip;
import wjs.blog.utils.JDBCUtil;

public class IpDaoJDBCImpl implements IpDao {
	
	@Override//添加留言
	public int add(Ip ip) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int n = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "insert into ip (ip,count)values(?,?)";
		
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, ip.getIp());
			ps.setInt(2, ip.getCount());
			
			n = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return n;
	}
	
	
	//////////////查看留言列表
	public List<Ip> findAll() {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Ip> ipList = null;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * from ip ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			//遍历结果集	
			if(rs != null){
				boolean flag = true;
				while(rs.next()){
					if(flag){
						ipList = new ArrayList<Ip>();
						flag = false;
					}
					
					Ip ip = new Ip();
					ip.setIpid(rs.getInt("ipid"));
					ip.setIp(rs.getString("ip"));
					ip.setCount(rs.getInt("count"));		
					ipList.add(ip);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return ipList;
	}

	@Override
	public int findTotalCount() {
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;		
		int n = 0;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select count(*) as totalcount from ip";
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
	public List<Ip> findOnePage(int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Ip> ipList = null;
		//计算分页相关参数
		//变量startRecordNo 存储的是当前分页第一条记录的前一个位置 
		int startRecordNo = (pageIndex - 1) * pageSize;
			
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * from ip order by guestid desc limit ?,?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, startRecordNo);
			ps.setInt(2, pageSize);
			
			rs = ps.executeQuery();
			
			//遍历结果集
			if(rs != null){
				boolean flag = true;
				while(rs.next()){
					if(flag){
						ipList = new ArrayList<Ip>();
						flag = false;
					}
						
					Ip ip = new Ip();
					ip.setIpid(rs.getInt("ipid"));
					ip.setIp(rs.getString("ip"));
					ip.setCount(rs.getInt("count"));		
					ipList.add(ip);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return ipList;

	}
}
