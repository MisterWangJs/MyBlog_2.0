package wjs.blog.dao;

import java.util.List;


import wjs.blog.domain.User;

public interface IUserDao {


	public int add(User user);
	
	public int deleteById(int id);
		


	public User findByName(String username);

	public User findById(int id);

	public int findTotalCount();
	
	public List<User> findAll();

	public List<User> findOnePage(int pageIndex, int pageSize);

	
	int modify(User user, String username);

	int modify(int id, User user);

	public int ModifyUser(int id, User user);
}
