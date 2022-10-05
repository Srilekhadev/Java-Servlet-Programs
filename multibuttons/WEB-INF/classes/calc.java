import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class calc extends HttpServlet
{
    public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
    {
       rs.setContentType("text/html");
       PrintWriter pw=rs.getWriter();
       int a=0,b=0,c=0;
       a=Integer.parseInt(rq.getParameter("t1"));
       b=Integer.parseInt(rq.getParameter("t2"));

       if(rq.getParameter("add") != null)
       {
         c=a+b;
         pw.println("<h1> Add=" + c);
       }
       else if(rq.getParameter("sub") != null)
       {
         c=a-b;
         pw.println("<h1> Sub=" + c);
       }
       else if(rq.getParameter("mult") != null)
       {
         c=a*b;
         pw.println("<h1> Mult=" + c);
       }
       pw.println("<h2> Enjoyed maths !....");
       pw.println("<br> <A href='/multibuttons/maths.html'>More Maths</A>");
   }
}
