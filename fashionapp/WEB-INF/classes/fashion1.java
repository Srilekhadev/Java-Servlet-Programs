import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class fashion1 extends HttpServlet
{
         public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
         {
                rs.setContentType("text/html");
                PrintWriter pw=rs.getWriter();
	String name,add;
	int age;
	name=rq.getParameter("t1");
	age=Integer.parseInt(rq.getParameter("t2"));
	add=rq.getParameter("t3");
	if(age>=18)
                {
	    pw.println("<h1> U R eligible for fashion show...");
	    pw.println("<h2> Name= " +name);
	     pw.println("<h2> Address= " +add);
	     pw.println("<h2> tickets are dispatched to your address.");
 	}
	else
	{
	   pw.println("<h1> U R not eligible for fashion show...");
	   pw.println("<h2> try after few years.");
	}
          
                pw.close();
         }
}
