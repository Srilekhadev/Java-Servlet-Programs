<html>
<body>
 <% 
out.println("<h1> session data<br>");
String name=(String)session.getAttribute("name");
String age=(String)session.getAttribute("age");
out.println("<h1> name="+name+" age=" +age);
      out.println("<h2> <A href=/jspsession/form1.html>Add More Data</A>");
	%>
</body>
</html>
	