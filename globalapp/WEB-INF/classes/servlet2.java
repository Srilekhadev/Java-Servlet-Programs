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
	ServletContext sc=getServletContext();
	name=(String)sc.getAttribute("name");
	desig=(String)sc.getAttribute("desig");

	pw.println("<h1> Data from global object...");
	pw.println("<h2> Name= " +name);
	pw.println("<h2> deisgnation= " +desig);
          
                pw.close();
         }
}
