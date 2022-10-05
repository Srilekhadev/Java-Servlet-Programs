import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class welcome extends HttpServlet
{

 public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
 {
  rs.setContentType("text/html");
  PrintWriter pw=rs.getWriter();
pw.println("<h1> U R welcome to this site.");
pw.println("<h1> U R valid user.");
pw.println("<h2> User Name :"+rq.getParamter("uname"));
pw.close();

 }


}
