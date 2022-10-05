import javax.servlet.*;
import java.io.*;
public class servlet1 extends GenericServlet
{
   public void service(ServletRequest  rq,ServletResponse rs) throws ServletException ,IOException
   {
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      pw.println("<h1> This is my first servlet app.");
      pw.println("<h2> Welcome to Servlet world");
      pw.println("<h3> This is generic servlet.");
      pw.close();

   }
}
