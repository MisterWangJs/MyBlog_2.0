package wjs.blog.servlet_user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wjs.blog.dao.IUserDao;
import wjs.blog.dao.impl.UserDaoJDBCImpl;

@WebServlet("/user_delete")
public class UserDeleteServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.获得请求参数
		String uId = request.getParameter("id");
		int id = Integer.parseInt(uId);
		
		//2.借助DAO实现删除学生的业务逻辑
		IUserDao userDao = new UserDaoJDBCImpl();
		int i = userDao.deleteById(id);
		
		//3.如果删除成功，则跳转到学生列表servlet
		if(i == 1){
			response.sendRedirect("./user_list");
		}
	}
}
