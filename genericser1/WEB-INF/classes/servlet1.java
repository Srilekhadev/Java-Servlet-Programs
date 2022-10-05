import java.io.*;
import javax.servlet.*;
public class servlet1 extends GenericServlet
{

   public void service(ServletRequest rq,ServletResponse rs)throws ServletException ,IOException
   {
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      pw.println("<h1>This is my first generic servlet");
      pw.println("<h2>Welcome to Generic servlet world");
      pw.println("<h3>Have a nice day.");
      pw.close();
   }
}

