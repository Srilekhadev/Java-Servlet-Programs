<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Learning</title>
</head>
<script> 
function a()
{
	//self.resizeTo(500,500);	
}
</script> 

<body onload="a()">

<p align="center" style="background:#CCCCCC" > 
The result of your sql statement</p>
<table align="center" class="reference" cellspacing="0" cellpadding="0" border="1"  width="50%">

	<%	
		//Boolean result=(Boolean)session.getAttribute("result");
		String result="";
		result=request.getParameter("res");
		System.out.println("result  "+result);
		if(result.equals("true"))
		{
		 %>
		  <p>Correct Output</p>		
		 <%
		}
		else
		{
		%>
			<p>Sorry,incorrect answer</p>
		<%
		
		}
		Vector vec=new Vector();		
		Vector vec1=new Vector();
		Vector vec2=new Vector();
		Vector vec3=new Vector();
		
		
		Integer a=(Integer)session.getAttribute("columnvalue");		
		System.out.println("Column value is jjjjjjjjj "+a);
		if(a==1)
		{
			vec=(Vector)session.getAttribute("Vector");	
			String first=(String)session.getAttribute("firstcolumn");
			//out.println("Column name  "+first);
			%>
			
			
			<tr><th align='left'><%=first%></th></tr>
		<%				
			Iterator it=vec.iterator();
			while(it.hasNext())
			{			
				String st=it.next().toString();	
				//out.println(st);			
				%>
				<tr><td><%= st %></td></tr>
						
				<%
				
			}	
			vec.removeAllElements();	
			
		}	//first if loop finished here	
		
		if(a==2)
		{
			vec=(Vector)session.getAttribute("Vector");	
			vec1=(Vector)session.getAttribute("Vector1");	
			
			String first=(String)session.getAttribute("firstcolumn");
			String second=(String)session.getAttribute("secondcolumn");			
			%>
				<tr><th align='left'><%=first%></th> <th align='left'><%=second%></th></tr>
			<%
				Iterator it=vec.iterator();
				Iterator it1=vec1.iterator();
				while(it.hasNext())
				{
					String st=it.next().toString();	
					%>
						<tr><td><%= st %></td>
						<%
						//while(it1.hasNext())
						{
						   String st1=it1.next().toString();	
						   %>
						   		<td><%= st1 %></td></tr>
						   <%
						   
							
						}			
				
				 }
				 vec.removeAllElements();	
				 vec1.removeAllElements();	
			 }//second if loop finished here
			 
			 
			 if(a==3)
			 {
			 		vec=(Vector)session.getAttribute("Vector");	
					vec1=(Vector)session.getAttribute("Vector1");	
					vec2=(Vector)session.getAttribute("Vector2");	
				
					String first=(String)session.getAttribute("firstcolumn");
					String second=(String)session.getAttribute("secondcolumn");	
					String third=(String)session.getAttribute("thirdcolumn");	
					
					Iterator it=vec.iterator();
					Iterator it1=vec1.iterator();
					Iterator it2=vec2.iterator();
					%>
						<tr><th align='left'><%=first%></th> <th align='left'><%=second%></th><th align='left'><%=third%></th></tr>
					<%
					while(it.hasNext())
					{
						String st=it.next().toString();	
						String st1=it1.next().toString();	
						String st2=it2.next().toString();	
						
						%>
							<tr><td><%= st %></td>
							<td><%= st1 %></td>
							<td><%= st2 %></td></tr>		
						
						<%						
					}	
					vec.removeAllElements();	
					vec1.removeAllElements();			
					vec2.removeAllElements();		 
			 	
			 }//third if loop finished here
				if(a==4)
				{
					vec=(Vector)session.getAttribute("Vector");	
					vec1=(Vector)session.getAttribute("Vector1");	
					vec2=(Vector)session.getAttribute("Vector2");	
					vec3=(Vector)session.getAttribute("Vector3");
				
					String first=(String)session.getAttribute("firstcolumn");
					String second=(String)session.getAttribute("secondcolumn");	
					String third=(String)session.getAttribute("thirdcolumn");	
					String four=(String)session.getAttribute("fourthcolumn");	
					
					Iterator it=vec.iterator();
					Iterator it1=vec1.iterator();
					Iterator it2=vec2.iterator();
					Iterator it3=vec3.iterator();
					%>
						<tr><th align='left'><%=first%></th> <th align='left'><%=second%></th><th align='left'><%=third%></th><th align='left'><%=four%></th></tr>
					<%
					
					while(it.hasNext())
					{
						String st=it.next().toString();	
						String st1=it1.next().toString();	
						String st2=it2.next().toString();	
						String st3=it3.next().toString();	
						%>
							<tr><td><%= st %></td>
							<td><%= st1 %></td>
							<td><%= st2 %></td>
							<td><%= st3 %></td>	</tr>	
								
						<%				
						
					}
					vec.removeAllElements();
					vec1.removeAllElements();
					vec2.removeAllElements();
					vec3.removeAllElements();				
				}
			
			%>
			
	
	   
	   
	   </table>
</body>
</html>
