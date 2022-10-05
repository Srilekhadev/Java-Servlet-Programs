import java.io.*;
import javax.servlet.*;
public class filter1 implements Filter
{
   public void init(FilterConfig f)
   {
   }
   public void destroy()
   {
   }
   public FilterConfig getFilterConfig()
   {
      return null;
   }
   public void doFilter(ServletRequest rq,ServletResponse rs,FilterChain chain) throws ServletException,IOException
   {
      PrintWriter pw=rs.getWriter();
      rs.setContentType("text/html");

      String uname=rq.getParameter("uname");
      String pwd=rq.getParameter("pwd");
      pw.println("<h1> this is Fileter class");
      if(uname.equals("dev") && pwd.equals("computer") )
      {
         pw.println("<br> U R autherized user");
         chain.doFilter(rq,rs);
       }
       else
       {
         pw.println("U R not auterized user");
        }

        pw.println("<br>  back to filter");
        pw.close();
   }
}




