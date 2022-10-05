<html>
<body>
<h1> <center> Servlet collaberation<br>
<%
String name=request.getParameter("name");
String add=request.getParameter("add");

	int age=Integer.parseInt(request.getParameter("age"));
	if (age>=18)
	{
%>

<jsp:forward page="major.jsp">
</jsp:forward>


<%
	}
	else
	{
%>
<jsp:forward page="minor.jsp">
<jsp:param name="name" value="kumar" />
<jsp:param name="add" value="1-1-1" />
</jsp:forward>
<%	}
%>
</body>
</html>


