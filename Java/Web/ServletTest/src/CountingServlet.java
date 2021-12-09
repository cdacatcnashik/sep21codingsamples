package core.web.app;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/count")
public class CountingServlet extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("id");
		if(name.length() == 0){
			response.sendRedirect("welcome.gws");
			return;
		}
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		Integer n = (Integer)session.getAttribute(name);
		if(n == null) n = 1;
		out.println("<html>");
		out.println("<head><title>CoreWebApp</title></head>");
		out.println("<body>");
		out.printf("<h1>Hello %s</h1>%n", name);
		out.printf("<b>Number of greetings:</b>%d%n", n);
		out.println("</body>");
		out.println("</html>");
		out.close();
		session.setAttribute(name, n + 1);
		if(n > 4)
			session.invalidate();
	}
}

