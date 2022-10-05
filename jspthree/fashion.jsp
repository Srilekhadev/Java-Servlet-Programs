<html>
  <body>
   <%
	String name,add;
	int age;
	name=request.getParameter("name");
	age=Integer.parseInt(request.getParameter("age"));
	add=request.getParameter("add");
 	if(age>=18)
	{
%>
	<br> <h1> U R eligible for fashion show <br> 
	tickets are dispatched to your address.<br>
<%
	}
	else
	{
%>
	   <br><h1> U R not eligible for fashion show<br>
	try after few years.</h1>
	<%
	  }
	     out.println("<h2><br> your name=" +name);
	      out.println("<h2><br> your age=" +age);	     	
	      out.println("<h2><br> your address=" +add);		
	%>
<br> <h1> have a nice day
</body>
</html>



