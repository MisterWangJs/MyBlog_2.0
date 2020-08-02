package wjs.blog.filter;

import java.io.IOException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class MyIpFilter
 */
@WebFilter("/MyIpFilter")
public class MyIpFilter implements Filter {

	  private FilterConfig filterConfig;
	    
	    @Override
	    public void destroy() {
	        
	    }

	    @Override
	    public void doFilter(ServletRequest request, ServletResponse response,
	            FilterChain chain) throws IOException, ServletException {
	        ServletContext context = filterConfig.getServletContext();
	        Map<String, Integer> ipMap = (Map<String, Integer>) context.getAttribute("ipMap");
	        String ip = request.getRemoteAddr();
	        if(ipMap.containsKey(ip)){
	            Integer count = ipMap.get(ip);
	            ipMap.put(ip,count+1);
	        }else{
	            ipMap.put(ip,1);
	        }
	        context.setAttribute("ipMap", ipMap);
	        chain.doFilter(request, response);
	    }

	    @Override
	    public void init(FilterConfig filterConfig) throws ServletException {
	        this.filterConfig = filterConfig;
	    }

}
