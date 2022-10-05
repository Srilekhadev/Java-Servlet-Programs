<html>
<body>
<h1><center> Global object demo </center></h1>
<%
	String name=request.getParameter("name");
 	String desig=request.getParameter("desig");
	application.setAttribute("name",name);
	application.setAttribute("desig",desig);
%>
  <br><h2> Information written into global object <br>
<A href=/jspfour/second.jsp> Show global data</a>
</body>
</html>

