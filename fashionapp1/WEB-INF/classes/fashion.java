import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class fashion extends HttpServlet
{
 public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
 {
  int age=0;
  rs.setContentType("text/html");
  PrintWriter pw=rs.getWriter();
  pw.println("<br><h1>This is Fashion Servlet");        
  try
  {
   age=Integer.parseInt(rq.getParameter("age"));
  }
  catch(Exception e)
  {
   //rs.sendRedirect("/fashionapp1/err.html");
  System.out.print("\n Invalid age.");
  }
                  
  if(age>=18)
  {
   RequestDispatcher rd=rq.getRequestDispatcher("/major1");
   rd.forward(rq,rs);
  }
  else
  {
   RequestDispatcher rd=rq.getRequestDispatcher("/minor1");
   rd.include(rq,rs);
  }
  pw.println("<br>End of Fashion Servlet...");
  pw.close();
 }
}
