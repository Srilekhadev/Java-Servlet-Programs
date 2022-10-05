import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class servlet2 extends HttpServlet
{

         public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
         {
                rs.setContentType("text/html");
                PrintWriter pw=rs.getWriter();
	String name,age;

	name=rq.getParameter("name");
	age=rq.getParameter("age");

	pw.println("<h1> This is servlet2...");
	pw.println("<h2> Name= " +name);
	pw.println("<h2> Age= " +age);
          
                pw.close();
         }
}
