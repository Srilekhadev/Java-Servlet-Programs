import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class myhttpfirst extends HttpServlet
{
   public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
   {
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      pw.println("<h1> This is http servlet");
      pw.println("<h2> Welcome to Servlet World");
      pw.close();

    }
}

