<html>
<body>
 <% 
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	session.setAttribute("name",name);
	session.setAttribute("age",age);
	out.println("<h1> Data stored in session object");
out.println("<h2> <A href=/jspsession/second.jsp> Show Sessiondata Data</A>");
	%>
</body>
</html>
	