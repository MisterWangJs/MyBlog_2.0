package wjs.blog.dao;

import java.util.List;

import wjs.blog.domain.GuestBook;
import wjs.blog.domain.User;

public interface IGuestBookDao {

	public int add(GuestBook guestbook);

	List<GuestBook> findOnePage(int pageIndex, int pageSize);

	int findTotalCount();

	int deleteById(int guestid);
	public int ModifyGb(int guestid, GuestBook gb);

	GuestBook findByGId(int guestid);
 
}
