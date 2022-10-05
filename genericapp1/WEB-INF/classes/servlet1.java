import javax.servlet.*;
import java.io.*;
public class servlet1 extends GenericServlet
{
   public void service(ServletRequest rq,ServletResponse rs) throws ServletException,IOException
   {
      rs.setContentType("text/html");
     PrintWriter pw=rs.getWriter();
     pw.println("<h1> Welcome to servlet world");
     pw.println("<h2> this is generic servlet.");
     pw.close();		


   }
}