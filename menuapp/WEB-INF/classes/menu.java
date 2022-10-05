import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class menu extends HttpServlet
{
         public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
         {
                rs.setContentType("text/html");
                PrintWriter pw=rs.getWriter();

	pw.println("<h1> Index </h1>");
	pw.println("<h2> <A href='/menuapp/emp.html'>Employee Form</A>");
	pw.println("<h2> <A href='/menuapp/stud.html'>Student Form</A>");
	pw.close();
         
         }
}
