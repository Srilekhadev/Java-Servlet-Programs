<html>
<body>
 <%
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	out.println("<h1> this is first.jsp");
	out.println("<h2> <A href='/jspseven/second.jsp?name="+name+"&age="+age+" '>Second.jsp </A>");
%>
</body>
</html>
