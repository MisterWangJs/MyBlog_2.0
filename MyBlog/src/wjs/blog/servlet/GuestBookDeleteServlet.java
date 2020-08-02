package wjs.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wjs.blog.dao.IGuestBookDao;
import wjs.blog.dao.IUserDao;
import wjs.blog.dao.impl.GuestBookDaoJDBCImpl;
import wjs.blog.dao.impl.UserDaoJDBCImpl;

@WebServlet("/guestbook_delete")
public class GuestBookDeleteServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.获得请求参数
		String gid = request.getParameter("id");
		int guestid = Integer.parseInt(gid);
		
		//2.借助DAO实现删除学生的业务逻辑
		IGuestBookDao gbDao = new GuestBookDaoJDBCImpl();
		
		int i = gbDao.deleteById(guestid);
		
		
		//3.如果删除成功，则跳转到学生列表servlet
		if(i == 1){
			response.sendRedirect("./gb_list");
		}
	}
}
