<html>
<body>
 <%
out.println("<h1> this is second.jsp");	
String name=request.getParameter("name");
	String age=request.getParameter("age");
	
	out.println(" <h2> name="+name+" age="+age);
%>
</body>
</html>
