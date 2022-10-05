import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class employee extends HttpServlet
{
         public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
         {
                rs.setContentType("text/html");
                PrintWriter pw=rs.getWriter();
	String ename=rq.getParameter("ename");
	String company=rq.getParameter("company");
	pw.println("<h1> Employee Details<br>");
	pw.println("<h2> Ename=" +ename+"  Company=" +company);
	pw.close();
         }
}
