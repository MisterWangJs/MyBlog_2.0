package wjs.blog.servlet.blog;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wjs.blog.dao.IBlogDao;
import wjs.blog.dao.impl.BlogDaoJDBCImpl;
import wjs.blog.domain.Blog;
import wjs.blog.utils.PageBeanBlog;

/**
 * Servlet implementation class SayingListServlet
 */
@WebServlet("/BlogListServlet")
public class BlogListServlet extends HttpServlet {
	
		private int pageSize;

		@Override
		public void init(ServletConfig config) throws ServletException {
			String sPageSize = config.getInitParameter("pageSize");
			if(sPageSize != null){
				this.pageSize = Integer.parseInt(sPageSize);
			}else{
				this.pageSize = 2;
			}
		}
		
		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//1.设置请求参数编码
			request.setCharacterEncoding("utf-8");
			
			//2.获得请求参数 - 请求参数就是要显示的 页码pageIndex
			String sPageIndex = request.getParameter("pageIndex");
			
			//3.对参数要进行判断
			if(sPageIndex == null)
				sPageIndex = "1";
			
			//4.将参数由字符串类型  转换成 int类型
			int pageIndex = Integer.parseInt(sPageIndex);
			
			//5.构造 分页对象PageBean
			IBlogDao blogDao = new BlogDaoJDBCImpl();
			int count = blogDao.findTotalCount();
			List<Blog> list = blogDao.findOnePage(pageIndex, this.pageSize); 
			
			PageBeanBlog<Blog> PageBeanBlog = new PageBeanBlog<Blog>(pageIndex, count, this.pageSize, list);
	 		PageBeanBlog.init();
	 		
	 		//6.跳转到 列表页面 00
	 		request.setAttribute("PageBeanBlog", PageBeanBlog);
	 		RequestDispatcher rd = request.getRequestDispatcher("./blog.jsp");
	 		rd.forward(request, response);
			
			
		}
	    

}
