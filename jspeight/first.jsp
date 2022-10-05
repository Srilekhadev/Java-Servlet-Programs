<html><body>
<%@ page import="java.sql.*" %>
<%!
	Connection con;
	 Statement st;  %>
<h1> This is jsp eight</h1>
<%
	
 try
   {

  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("jdbc:odbc:mydb","scott","tiger");
  st=con.createStatement();

  String ename=request.getParameter("ename");
  String empno=request.getParameter("empno");
  String esal=request.getParameter("esal");
  String qry="insert into myemp values('"+ename+"',"+empno+","+esal+")";
  int n=st.executeUpdate(qry);
    if(n==0)
      out.println("<h1>Record not added");
    else
      out.println("<h1>Record added successfully");
  out.println("<br><A href=/jspeight/empform.html>Add more Records</A>");
st.close();
con.close();
  }
  catch(Exception e)
  {
    out.println("Error :"+e);
  }
%>
</body>
</html>