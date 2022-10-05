import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class httpservlet1 extends HttpServlet
{
    public void doGet(HttpServletRequest rq,HttpServletResponse rs)
				throws ServletException,IOException
    {
       rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      pw.println("<h1>Welcome to Servlet world.");
      pw.println("<h2>This is http servlet.");
      pw.println("<h3>Have a nice day");
      pw.close();
    }
}
      
