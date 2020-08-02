package wjs.blog.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wjs.blog.dao.IGuestBookDao;
import wjs.blog.dao.impl.GuestBookDaoJDBCImpl;
import wjs.blog.domain.GuestBook;
import wjs.blog.utils.PageBean;

/**
 * Servlet implementation class SayingListServlet
 */
@WebServlet("/gb_list")
public class GuestBookListServletCMS extends HttpServlet {
	
		private int pageSize;

		@Override
		public void init(ServletConfig config) throws ServletException {
			String sPageSize = config.getInitParameter("pageSize");
			if(sPageSize != null){
				this.pageSize = Integer.parseInt(sPageSize);
			}else{
				this.pageSize = 5;
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
			IGuestBookDao guestbookDao = new GuestBookDaoJDBCImpl();
			int count = guestbookDao.findTotalCount();
			List<GuestBook> list = guestbookDao.findOnePage(pageIndex, this.pageSize); 
			
			PageBean<GuestBook> pageBean = new PageBean<GuestBook>(pageIndex, count, this.pageSize, list);
	 		pageBean.init();
	 		
	 		//6.跳转到 列表页面 00
	 		request.setAttribute("pageBean", pageBean);
	 		RequestDispatcher rd = request.getRequestDispatcher("./CMS/guestbook_list.jsp");
	 		rd.forward(request, response);
			
			
		}
	    

}
