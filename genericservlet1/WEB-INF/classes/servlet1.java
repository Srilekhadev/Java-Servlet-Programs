import javax.servlet.*;
import java.io.*;
public class servlet1 extends GenericServlet
{
   public void service(ServletRequest rq,ServletResponse rs)throws ServletException,IOException
   {
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      pw.println("<h1> Welcome to Servlet world");
      pw.println("<h2> This is generic servlet");
      pw.println("<h3> Have a nice day.");
      pw.close();

   }
}
