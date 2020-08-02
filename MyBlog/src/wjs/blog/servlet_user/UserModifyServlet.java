package wjs.blog.servlet_user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wjs.blog.dao.IUserDao;
import wjs.blog.dao.impl.UserDaoJDBCImpl;
import wjs.blog.domain.User;

@WebServlet("/user_modify")
public class UserModifyServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sId = request.getParameter("id");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		int id = Integer.parseInt(sId);
		
		
		
		//3.创建实体对象
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setName(name);
		user.setSex(sex);
		user.setEmail(email);
		user.setTel(tel);
		
		
		//4.借助IStudentDao将信息添加到DB中
		IUserDao userDao = new UserDaoJDBCImpl();
		int i = userDao.ModifyUser(id, user);
		
		if(i == 1){
			response.sendRedirect("./user_list");
		}
	
	}
}
