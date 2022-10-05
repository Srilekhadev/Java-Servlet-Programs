import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
public class servlet1 extends HttpServlet
{
    public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
    {
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      String uname=rq.getParameter("uname");

      pw.println("<h1>Welcome to Servlet1.");
      pw.println("<h2>Have a nice day <Big> "+uname);
      pw.close();
    }
}
      
