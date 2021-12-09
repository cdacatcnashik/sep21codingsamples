package core.web.app;

import java.io.*;
import javax.servlet.*;

@javax.servlet.annotation.WebFilter("/*")
public class PausingFilter implements Filter {

	private long last;

	public void init(FilterConfig cfg) throws ServletException {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain next) throws ServletException, IOException {
		long now = System.currentTimeMillis();
		if(now - last > 5000) {
			last = now;
			next.doFilter(request, response);
		}else{
			response.getWriter().println("Server busy, please try after some time...");
		}
	}

	public void destroy() {}
}

