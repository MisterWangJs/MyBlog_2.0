package wjs.blog.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VisitCountServlet
 */
@WebServlet("/VisitCountServlet")
public class VisitCountServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int totalCount=1;//默认访问量为1
		
		//获取网站访问量
		
		Object count = request.getServletContext().getAttribute("count");
	   //判断count是否为null，不为null表示曾经访问过，直接将count赋值给totalCount
		if(count!=null) {
			totalCount=(int)count;
		}
		
		//访问次数累加
		request.setCharacterEncoding("utf-8");
		request.getServletContext().setAttribute("count",totalCount+1);
		response.getWriter().println("网站访问量为："+totalCount);	//输出到界面

	
	}
}
