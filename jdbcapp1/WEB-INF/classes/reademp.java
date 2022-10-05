import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class reademp extends HttpServlet
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

  String qry="select * from myemp";

  try
  {
 rst=st.executeQuery(qry);
pw.println("<center><table width='50%' border='1'>");
pw.println("<caption> Employee Details</caption>");
pw.println("<tr><th>Ename</th><th>Empno</th><th>Esal</th></tr>");
while (rst.next())
{
pw.println("<tr><td>"+rst.getString("ename")+"</td> <td>" +rst.getInt("empno")+
"</td> <td>"+rst.getInt("esal")+"</td></tr>" );
}
pw.println("</table>");

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
