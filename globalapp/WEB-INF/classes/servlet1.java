import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class servlet1 extends HttpServlet
{

         public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
         {
                rs.setContentType("text/html");
                PrintWriter pw=rs.getWriter();
	String name,desig;
	name=rq.getParameter("name");
	desig=rq.getParameter("desig");
	
	ServletContext sc=getServletContext();
	sc.setAttribute("name",name);
	sc.setAttribute("desig",desig);
	pw.println("<h1> Data stored into global object..");
   	pw.println("<br> <A href='/globalapp/second'>Show Global Data </A>");
	
                pw.close();
         }
}
