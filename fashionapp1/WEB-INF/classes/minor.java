import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class minor extends HttpServlet
{
  public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
  {
   rs.setContentType("text/html");
   PrintWriter pw=rs.getWriter();
   String name=rq.getParameter("name");
   String age=rq.getParameter("age");
   String add=rq.getParameter("add");
   pw.println("<h1>U R not eligible for Fashion Show");
   pw.println("<br>your name="+name);
   pw.println("<br>your age="+age);
   pw.println("<br>your add="+add);
   pw.println("<br>Try after few years");
   pw.close();
  }
}
            
             
