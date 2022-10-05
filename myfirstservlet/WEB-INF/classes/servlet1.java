import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class servlet1 extends HttpServlet
{
   public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
   {
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      pw.println("<h1> this is http servlet");
      pw.println("<h2> Welcome to httpservlet world");
      pw.close();
      
   }
}
