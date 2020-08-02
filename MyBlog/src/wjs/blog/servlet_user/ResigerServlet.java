package wjs.blog.servlet_user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.IOException;

import wjs.blog.dao.IUserDao;
import wjs.blog.dao.impl.UserDaoJDBCImpl;
import wjs.blog.domain.User;

@WebServlet("/register")
public class ResigerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.设置请求参数的编码
		//request.setCharacterEncoding("utf8");
		//2.得到请求参数
		/*String newname = request.getParameter("newname");
		String newemail = request.getParameter("newemail");
		String newusername = request.getParameter("newusername");
		String newuserpwd = request.getParameter("newuserpwd");
	
	
		//3.创建实体对象		
		User nuse = new User();
		nuse.setNewname(newname);
		nuse.setNewemail(newemail);
		nuse.setNewusername(newusername);
		nuse.setNewuserpwd(newuserpwd);
		*/
		//1.设置请求编码
		//request.setCharacterEncoding("utf-8");
		
		//2.获取请求参数:username,password,validateCode
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		int i = 0;
		/*
		//3.创建实体对象
		User user = new User();
		
		
		
		
		//4.封装实体对象
		user.setUsername(username);
		user.setPassword(password);
		user.setName(name);
		user.setSex(sex);
		user.setEmail(email);
		user.setTel(tel);*/
			
		
		//5.借助DAO把实体对象添加到DB中
		IUserDao  userDao =  new UserDaoJDBCImpl();
		
		
		User u =null;
		try{
			u = userDao.findByName(username);
			
			if(!"".equals(u.getUsername())){
				request.setAttribute("adduserError", "用户名" + username + "已存在");
				request.getRequestDispatcher("./User/register.jsp").forward(request, response);
				return;
			}
			
		}catch(NullPointerException e){
			u = new User();
			
			u.setUsername(username);
			u.setPassword(password);
			u.setName(name);
			u.setSex(sex);
			u.setEmail(email);
			u.setTel(tel);
			
			 i = userDao.add(u);
				
				//6.通过请求转发 的跳转到 操作成功信息提示页面		
				//request.setAttribute("opMsg", "添加用户成功！");	
				
				if(i == 1){
				
					response.sendRedirect("./User/UserRegSuccess.jsp");
				}	
			
		}
		
		
		
		
	}
}