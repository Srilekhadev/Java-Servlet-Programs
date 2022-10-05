<html><body>
<%@ page import="java.sql.*" %>
<%!
	Connection con;
	 Statement st; 
	 ResultSet rs; %>
<%
 try
   {

  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("jdbc:odbc:devdb","scott","tiger");
  st=con.createStatement();
   rs=st.executeQuery("select * from myemp");
%>
<h2> Employee Details <br>
<table border="2" width="200" height="200">
<tr> 
 <th>EName</th> <th>Empno</th>  <th>Esal</th>
</tr>
<% 
 while(rs.next())
 {
   %>

    <tr> 
       <td>  <%=rs.getString("ename") %> </td>
        <td>  <%=rs.getInt("empno") %> </td>
        <td>  <%=rs.getInt("esal") %> </td>
     </tr>
 <%
    }
   st.close();
   con.close();
  }
  catch(Exception e)
  {
    System.out.print("Error :"+e);
  out.println("Error:"+e);
  }
%>
</body>
</html>