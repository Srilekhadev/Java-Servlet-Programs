<html>
<body>
<h1><center> Global object Information </center></h1>
<%
	String name=(String)application.getAttribute("name");
 	String desig=(String)application.getAttribute("desig");
	out.println("<h1> name =" +name+"  designation="+desig);
%>
<br><br>
<A href=/jspfour/form1.html> New Form</a>
</body>
</html>

