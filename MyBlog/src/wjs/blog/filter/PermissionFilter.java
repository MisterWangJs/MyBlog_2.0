package wjs.blog.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wjs.blog.domain.User;

public class PermissionFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest)request;
		

		HttpSession session = req.getSession();
		User loginUser = (User)session.getAttribute("loginUser");
		

		if(loginUser == null){

			HttpServletResponse resp = (HttpServletResponse)response;
			

		//	String context = req.getContextPath();
			resp.sendRedirect("../login.jsp");
			return;
		}
		

		chain.doFilter(request, response);
		
	}

	@Override
	public void destroy() {

	}

}
