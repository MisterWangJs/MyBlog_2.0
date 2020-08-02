package wjs.blog.servlet_user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wjs.blog.dao.IUserDao;
import wjs.blog.dao.impl.UserDaoJDBCImpl;
import wjs.blog.domain.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.设置请求参数的编码
		//request.setCharacterEncoding("utf8");
		//2.得到请求参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String validateCode = request.getParameter("validateCode");
		
		//3.借助IUserDao进行查询
		IUserDao userDao = new UserDaoJDBCImpl();
		User loginUser = userDao.findByName(username);
		
		//4.如果用户不存在
		if(loginUser == null){
			request.setAttribute("loginError", "用户名：" +username + " 不存在，请重新登录。");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		//5.如果用户名存在，但是密码不对
		if(!loginUser.getPassword().equals(password)){
			request.setAttribute("loginError", "用户名：" +username + ",密码错误，请重新登录。");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		//6.判断验证码是否正确
		String sessionValidateCode = (String)request.getSession().getAttribute("SESSION_VALIDATECODE");
		if(!sessionValidateCode.equals(validateCode)){
			request.setAttribute("loginError", "验证码错误，请重新登录。");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		//.7登录成功
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", loginUser);
		
		//修改之前的代码
		//response.sendRedirect("./main/stu_list");
		
		//修改之后的代码
		response.sendRedirect("./CM/main.jsp");
	}
}
