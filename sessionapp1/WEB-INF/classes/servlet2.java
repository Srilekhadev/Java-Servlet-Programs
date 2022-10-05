import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class servlet2 extends HttpServlet
{

         public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
         {
                rs.setContentType("text/html");
                PrintWriter pw=rs.getWriter();
	String name,desig;
	HttpSession sn=rq.getSession();
	name=(String)sn.getAttribute("name");
	desig=(String)sn.getAttribute("desig");

	pw.println("<h1> Data from Session object...");
	pw.println("<h2> Name= " +name);
	pw.println("<h2> deisgnation= " +desig);
          
                pw.close();
         }
}
