import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class counter1 extends HttpServlet
{
   int count=0;
   public void doGet(HttpServletRequest rq,HttpServletResponse rs)
         throws IOException,ServletException
   {
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();

      count++;
      pw.println("<h1> Page accessed for "+count+ "times..");
      pw.println("<h2> Have a nice day.");
      pw.close();
    }
}
