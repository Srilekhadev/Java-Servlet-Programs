import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class counter2 extends HttpServlet
{
   int count=0;
   public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
   {
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      count++;
      pw.println("<h1>You have accessed this page for "+count+" times..");
      if(count>5)
      {
         pw.println("<h1> R U crazy...");
         count=0;
      }
      pw.println("<h2> Have a nice day..");
      pw.close();
    }
}
      
      
      
