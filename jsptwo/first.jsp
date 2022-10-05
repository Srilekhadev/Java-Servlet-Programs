<html><body>
 <h1><center> Jsp counter Demo </h1></center>
 <%!  int count=0;%>
<% 
  count++;
  out.println("<h1> No of times page accessed =" +count);
  if( count ==5 )
 {
    out.println("<h1> R U Crazy");
    show();
  }
%>
<%!
   public void show()
  {
      count=0;
  }
%>
<br><b2> Have a nice day.
</body></html>