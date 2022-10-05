import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class names extends HttpServlet
{
 public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
 {
	res.setContentType("text/html");
	PrintWriter out=res.getWriter();
	String name=req.getParameter("name");
	HttpSession sn=req.getSession();
	out.println("Session ID:"+sn.getId());
	out.println("<br><br><br>");
	String totalnames=(String)sn.getAttribute("names");
	if(totalnames==null)
		totalnames=name+"<br>";
	else
		totalnames=totalnames+name+"<br><br>";

	sn.setAttribute("names",totalnames);
	out.println("<h1>your Total Names so far  :" + totalnames);
	out.println("<A href=/sessionapp/form1.html>
ADD ONE MORE NAME</A><br><br>");
	out.close();
  }
}

