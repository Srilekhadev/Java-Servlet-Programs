<html>
<body>
<%@page import="java.sql.*" %>
<%! 
Connection con;
Statement st;
ResultSet rs;
%>

<%
try
{
int eno=Integer.parseInt(request.getParameter("eno"));
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:mydb","scott","tiger");
st=con.createStatement();
String qry="select * from myemp where empno="+eno;
rs=st.executeQuery(qry);
%>
<br>
<table width="80%" border="1">
<tr><th>Ename</th><th>Empno</th><th>Esal</th></tr>

<%
while(rs.next())
{
 out.println("<tr><td>"+rs.getString("ename")+"</td> <td>"+rs.getInt("empno")+"</td><td>"+rs.getInt("esal")+"</td></tr>");
}
out.println("</table>");

st.close();
con.close();
}
catch(Exception e)
{
System.out.print(e);
}
%>

</body>
</html>
