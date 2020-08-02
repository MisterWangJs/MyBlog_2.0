package wjs.blog.servlet.blog;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import wjs.blog.dao.IBlogDao;
import wjs.blog.dao.impl.BlogDaoJDBCImpl;
import wjs.blog.domain.Blog;

@WebServlet("/blog_modify")
public class BlogModifyServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("bid");
		String title = request.getParameter("title");
		String content = request.getParameter("content");		
		String pubtime = request.getParameter("pubtime");
		String author = request.getParameter("author");		
		String type = request.getParameter("type");
		int bid = Integer.parseInt(id);
		
		
		
		//3.创建实体对象
	
		Blog blog = new Blog();
		blog.setTitle(title);
		blog.setContent(content);
		blog.setPubtime(pubtime);
		blog.setAuthor(author);
		blog.setType(type);
		
		
		//4.借助ISayDao将信息添加到DB中
		IBlogDao blogDao = new BlogDaoJDBCImpl();
		int i = blogDao.ModifyBlog(bid, blog);
		
		if(i == 1){
			response.sendRedirect("./blog_list");
		}
	
	}
}
