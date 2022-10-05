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
	
	HttpSession sn=rq.getSession();
	sn.setAttribute("name",name);
	sn.setAttribute("desig",desig);
	pw.println("<h1> Data stored into session object..");
   	pw.println("<br> <A href='/sessionapp1/second'>Show Session Data </A>");
	
                pw.close();
         }
}
