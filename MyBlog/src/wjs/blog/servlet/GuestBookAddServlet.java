package wjs.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import wjs.blog.domain.*;
import wjs.blog.utils.PageBean;
import wjs.blog.dao.impl.*;
import wjs.blog.dao.*;
/**
 * Servlet implementation class GuestBookAddServlet
 */
@WebServlet("/GuestBookAddServlet")
public class GuestBookAddServlet extends HttpServlet {
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.设置请求参数的编码
		request.setCharacterEncoding("utf8");
		//2.得到请求参数
		Date date=new Date();
		  DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
		  String sendtime=format.format(date);
		String guestname = request.getParameter("guestname");
		String guestemail = request.getParameter("guestemail");
		String guestcontent = request.getParameter("guestcontent");
		
		/*
		if(guestname==null||guestname==""){
			request.setAttribute("ErrorMsg", "名字不能为空");
			request.getRequestDispatcher("guestbook.jsp").forward(request, response);
			return;
		}
		if(guestemail==null||guestemail==""){
			request.setAttribute("ErrorMsg", "email不能为空");
			request.getRequestDispatcher("guestbook.jsp").forward(request, response);
			return;
		}
		if(guestcontent==null||guestcontent==""){
			request.setAttribute("ErrorMsg", "留言内容不能为空");
			request.getRequestDispatcher("guestbook.jsp").forward(request, response);
			return;
		}
		*/
		
		
		//3.创建实体对象
		GuestBook gb = new GuestBook();
		gb.setGuestname(guestname);
		gb.setGuestemail(guestemail);
		gb.setGuestcontent(guestcontent);
		gb.setSendtime(sendtime);
		
		//4.借助IGuestBookDao将信息添加到DB中
		IGuestBookDao gbDao = new GuestBookDaoJDBCImpl();
		
		int i = gbDao.add(gb);
			
		if(i == 1){
			
			response.sendRedirect("SayingListServlet");
			
		}		
		
	}
    

}
