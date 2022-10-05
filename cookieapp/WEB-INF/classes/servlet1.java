import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class servlet1 extends HttpServlet
{
  public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
  {
	res.setContentType("text/html");
	PrintWriter out=res.getWriter();
	String name=req.getParameter("name");
	String age=req.getParameter("age");
	Cookie c1=new Cookie("name",name);
	Cookie c2=new Cookie("age", age);
	c1.setMaxAge(60*15);
	c2.setMaxAge(60*15);
	res.addCookie(c1);
	res.addCookie(c2);
	out.println("<center>Cookie are send to client</center>");
	out.println("<br><br>");
	out.println("<A href=/cookieapp/second>SHOW COOKIES</A>");
	out.close();
}
}
 