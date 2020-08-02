package wjs.blog.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wjs.blog.dao.IGuestBookDao;
import wjs.blog.dao.impl.GuestBookDaoJDBCImpl;
import wjs.blog.domain.GuestBook;

@WebServlet("/guestbook_modify")
public class GuestBookModifyServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String gid = request.getParameter("guestid");
		String guestname = request.getParameter("guestname");
		String guestemail = request.getParameter("guestemail");
		String guestcontent = request.getParameter("guestcontent");
		String sendtime = request.getParameter("sendtime");

		int guestid = Integer.parseInt(gid);
		
		
		
		//3.创建实体对象
		GuestBook gb = new GuestBook();
		gb.setGuestid(guestid);
		gb.setGuestname(guestname);
		gb.setGuestemail(guestemail);
		gb.setGuestcontent(guestcontent);
		gb.setSendtime(sendtime);
		
		
		
		//4.借助IGuestBookDao将信息添加到DB中
		IGuestBookDao gbDao = new GuestBookDaoJDBCImpl();
		int i = gbDao.ModifyGb(guestid, gb);
		
		if(i == 1){
			response.sendRedirect("./gb_list");
		}
	
	}
}
