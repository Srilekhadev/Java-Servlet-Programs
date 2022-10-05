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
String uname,password;
uname=request.getParameter("uname");
password=request.getParameter("password");
out.println("ok");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:mydb","scott","tiger");
st=con.createStatement();
String qry="select * from users where uname='"+uname+"' and password='"+password+"'";
rs=st.executeQuery(qry);
if(rs.next())
{
RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
rd.forward(request,response);
}
else
{
  out.println("<h1> U R not authorized user. Try again!");
}
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


