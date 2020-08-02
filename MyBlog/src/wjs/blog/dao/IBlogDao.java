package wjs.blog.dao;

import java.util.List;

import wjs.blog.domain.Blog;
import wjs.blog.domain.Saying;

public interface IBlogDao {

	int add(Blog blog);

	List<Blog> findAll();

	int findTotalCount();
	
	public List<Blog> findOnePage(int pageIndex, int pageSize);

	int deleteByBId(int bid);
	
	public int ModifyBlog(int bid, Blog blog);

	Blog findByBId(int bid);
	
	

}
