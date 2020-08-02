package wjs.blog.dao;

import java.util.List;


import wjs.blog.domain.Saying;

public interface ISayDao {

	int add(Saying say);

	List<Saying> findAll();

	int findTotalCount();

	List<Saying> findOnePage(int pageIndex, int pageSize);

	int deleteBySId(int sid);

	public int ModifySay(int sid, Saying say);
	
	Saying findBySId(int sid);

	
}
