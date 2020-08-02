package wjs.blog.servlet.blog;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wjs.blog.dao.IBlogDao;
import wjs.blog.dao.impl.BlogDaoJDBCImpl;

@WebServlet("/blog_delete")
public class BlogDeleteServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.获得请求参数
		String id = request.getParameter("bid");
		int bid = Integer.parseInt(id);
		
		//2.借助DAO实现删除学生的业务逻辑
		IBlogDao blogDao = new BlogDaoJDBCImpl();
		
		int i = blogDao.deleteByBId(bid);
		
		
		//3.如果删除成功，则跳转到学生列表servlet
		if(i == 1){
			response.sendRedirect("./blog_list");
		}
	}
}
