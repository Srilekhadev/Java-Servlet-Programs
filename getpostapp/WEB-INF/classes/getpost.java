import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class getpost extends HttpServlet
{
    public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
    {
       rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      pw.println("<html><body>");
      pw.println("<h1><center>Employee Form<br>");
      pw.println("<form name='f1' method='post' action='/getpostapp/mygetpost'>");
      pw.println("<br>Name : <input type='text' name='name' size='20'>");
      pw.println("<br>Salary : <input  type='text' name='salary' size='20'>");
      pw.println("<br> <input type='submit' name='submit' value='submit'>");
      pw.println("</form></body></html>");
      pw.close();
    }
    public void doPost(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
    {
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
	String name;
	int salary;
	name=rq.getParameter("name");
	salary=Integer.parseInt(rq.getParameter("salary"));
	pw.println("<h1> your name="+name);
 	pw.println("<h1> your salary="+salary);
	pw.println("<h2> Have a nice day.");
	pw.close();
       }	
}
