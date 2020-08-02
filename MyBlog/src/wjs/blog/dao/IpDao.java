package wjs.blog.dao;

import java.util.List;

import wjs.blog.domain.Ip;

public interface IpDao {

	int add(Ip ip);
	
	public List<Ip> findAll();
	
	int findTotalCount();

	List<Ip> findOnePage(int pageIndex, int pageSize);

	
}
