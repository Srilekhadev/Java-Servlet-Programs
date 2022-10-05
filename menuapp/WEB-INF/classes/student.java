import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class student extends HttpServlet
{
         public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
         {
                rs.setContentType("text/html");
                PrintWriter pw=rs.getWriter();
	String sname=rq.getParameter("sname");
	String college=rq.getParameter("college");
	pw.println("<h1> Students Details<br>");
	pw.println("<h2> Sname=" +sname+"  College=" +college);
	pw.close();
         }
}
