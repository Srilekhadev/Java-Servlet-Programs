import javax.servlet.*;
import java.io.*;
public class servlet1 extends GenericServlet
{
   String str="";

   public void init()
   {
      str="init()..";
    }
    public void destroy()
    {
      str=str+"destroy()..";
    }
    public void service(ServletRequest rq,ServletResponse rs)throws ServletException,IOException
    {
      str=str+"service()..";
      rs.setContentType("text/html");
      PrintWriter pw=rs.getWriter();
      pw.println("<h1>Welcome to Servlet world.");
      pw.println("<h2>This is generic servlet.");
      pw.println("<h3>str="+str);
      pw.close();
    }
}
      
