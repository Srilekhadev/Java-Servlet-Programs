<html>
<body>
 <% 
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	Cookie c1=new Cookie("name",name);
	Cookie c2=new Cookie("age",age);
	response.addCookie(c1);
 	response.addCookie(c2);
	out.println("<h1> Cookies sent to client");
out.println("<h2> <A href=/jspsix/second.jsp> Show Cookies Data</A>");
	%>
</body>
</html>
	