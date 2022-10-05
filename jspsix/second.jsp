<html>
<body>
 <% 
	Cookie c[]=request.getCookies();
	out.println("<h1> Cookies from client");
	out.println("<h2> "+c[0].getName() +" ="+ c[0].getValue() );
	out.println("<h2> "+c[1].getName() +" ="+ c[1].getValue() );
      out.println("<h2> <A href=/jspsix/form1.html>Add More Data</A>");
	%>
</body>
</html>
	