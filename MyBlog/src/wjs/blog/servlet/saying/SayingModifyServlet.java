package wjs.blog.servlet.saying;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wjs.blog.dao.IGuestBookDao;
import wjs.blog.dao.ISayDao;
import wjs.blog.dao.impl.GuestBookDaoJDBCImpl;
import wjs.blog.dao.impl.SayDaoJDBCImpl;
import wjs.blog.domain.GuestBook;
import wjs.blog.domain.Saying;

@WebServlet("/say_modify")
public class SayingModifyServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("sid");
		String img = request.getParameter("img");
		String saycontent = request.getParameter("saycontent");
		String saytime = request.getParameter("saytime");

		int sid = Integer.parseInt(id);
		
		
		
		//3.创建实体对象
		Saying say = new Saying();
		say.setSid(sid);
		say.setImg(img);
		say.setSaycontent(saycontent);
		say.setSaytime(saytime);
		
		//4.借助ISayDao将信息添加到DB中
		ISayDao sayDao = new SayDaoJDBCImpl();
		int i = sayDao.ModifySay(sid, say);
		
		if(i == 1){
			response.sendRedirect("./say_list");
		}
	
	}
}
