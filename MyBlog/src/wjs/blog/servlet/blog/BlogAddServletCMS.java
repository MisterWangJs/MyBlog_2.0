package wjs.blog.servlet.blog;

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
import wjs.blog.dao.impl.*;
import wjs.blog.dao.*;
/**
 * Servlet implementation class GuestBookAddServlet
 */
@WebServlet("/blog_add")
public class BlogAddServletCMS extends HttpServlet {
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.设置请求参数的编码
		request.setCharacterEncoding("utf8");
		//2.得到请求参数
		Date date=new Date();
		  DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
		String pubtime=format.format(date);
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String author = request.getParameter("author");
		String type = request.getParameter("type");
		
		//3.创建实体对象
		Blog blog = new Blog();
		blog.setTitle(title);
		blog.setContent(content);
		blog.setPubtime(pubtime);
		blog.setAuthor(author);
		blog.setType(type);
		
		//4.借助IGuestBookDao将信息添加到DB中
		IBlogDao blogDao = new BlogDaoJDBCImpl();
		
		int i = blogDao.add(blog);
			
		if(i == 1){
			
			response.sendRedirect("blog_list");
			
		}		
		
	}
    

}
