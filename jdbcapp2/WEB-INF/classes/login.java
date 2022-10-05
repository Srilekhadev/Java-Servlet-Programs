import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class login extends HttpServlet
{
 Connection con;
 Statement st;
Exception e1=null;
ResultSet rst;
 public void init()
 {
   try
   {
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("jdbc:odbc:mydb","scott","tiger");
  st=con.createStatement();
  }
  catch(Exception e)
  {
     e1=e;	
  }	
 }             

 public void doGet(HttpServletRequest rq,HttpServletResponse rs)throws ServletException,IOException
 {
  rs.setContentType("text/html");
  PrintWriter pw=rs.getWriter();
    if (e1!=null)
    {
      pw.println("<h2>error :"+e1);
      return;   
   }
String uname,password;
uname=rq.getParameter("uname");
password=rq.getParameter("password");

  String qry="select * from login where uname='" + uname+"' and password='" + password+"'";

  try
  {
 rst=st.executeQuery(qry);
if (rst.next())
{
 RequestDispatcher rqd=rq.getRequestDispatcher("/wel");
 rqd.forward(rq,rs);
}	
else
{
   pw.println("<h1> U R not authorized used.  Try again!");
  }
}
  catch(Exception e)
  {
      pw.println("<h2> Error1:"+e);
  }

  pw.close();

 }

 public void destroy()
 {
   try
   {
       st.close();
      con.close();
   }
    catch(Exception e)
    {
      System.out.print("Error :"+e);
     }
 }
}
