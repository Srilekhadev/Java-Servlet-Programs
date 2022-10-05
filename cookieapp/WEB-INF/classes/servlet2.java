import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class servlet2 extends HttpServlet
{
  public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
  {
	res.setContentType("text/html");
	PrintWriter out=res.getWriter();
	Cookie c[]=req.getCookies();

	out.println("<center>RECEIVED COOKIES INFORMATION</center>");
	out.println("<br><br>");
	for (int i=0;i<c.length;i++)
	{
	out.println("<h2>"+c[i].getName()+" : "+c[i].getValue());
	}
                 out.println("<br><br> <A href=/cookieapp/form1.html>Add more information...</A>");
	out.close();
    }
}
 