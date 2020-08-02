package wjs.blog.filter;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class MyIpListener
 *
 */
@WebListener
public class MyIpListener implements ServletContextListener{

	 @Override
	    public void contextDestroyed(ServletContextEvent arg0) {
	        
	    }

	    @Override
	    public void contextInitialized(ServletContextEvent arg0) {
	        ServletContext context = arg0.getServletContext();
	        Map<String, Integer> ipMap = new LinkedHashMap<String, Integer>();
	        context.setAttribute("ipMap", ipMap);
	    }

	
}
