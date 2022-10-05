import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class servlet1 extends HttpServlet
{

         public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
         {
                rs.setContentType("text/html");
                PrintWriter pw=rs.getWriter();
	String name;
	name=rq.getParameter("name");

	pw.println("<html><body>");
	pw.println("<h1> This is servlet1...<br>");
 	pw.println("<form name=f1 method=get action=/hiddenapp/second>");
	pw.println("<center><h1>Age : <input type=text name=age size=10>");
	pw.println("<input type=hidden name=name value="+name+">");
	pw.println("<br><input type=submit name=submit value=submit>");
	pw.println("</form></body></html>");
	pw.close();

         }
}
