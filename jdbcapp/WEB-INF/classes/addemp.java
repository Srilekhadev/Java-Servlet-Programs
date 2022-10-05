import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class addemp extends HttpServlet
{
 Connection con;
 Statement st;
Exception e1=null;
 public void init()
 {
   try
   {
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("jdbc:odbc:ora","scott","tiger");
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

  String ename=rq.getParameter("ename");
  String empno=rq.getParameter("empno");
  String esal=rq.getParameter("esal");
  String qry="insert into myemp values('"+ename+"',"+empno+","+esal+")";
  try
  {
  int n=st.executeUpdate(qry);
    if(n==0)
      pw.println("<h1>Record not added");
    else
      pw.println("<h1>Record added successfully");
  pw.println("<br><A href='/jdbcapp/empform.html'>Add more Records</A>");
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
