package wjs.blog.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class CharacterEncodingFilter implements Filter {
	private String encoding = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.encoding = filterConfig.getInitParameter("encoding");
		if(this.encoding == null){
			encoding = "utf8";
		}
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//���������ת����HTTPЭ���ʽ���������
		HttpServletRequest req = (HttpServletRequest)request;
		req.setCharacterEncoding(this.encoding);
		
		chain.doFilter(request, response);
		
	}

	@Override
	public void destroy() {

	}

}
