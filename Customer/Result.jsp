<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Learning</title>
</head>
<script> 
function a()
{
	self.resizeTo(300,200);	
}
</script> 
<body onload="a()">

	<%
		String str=request.getParameter("key");
		//out.println(str);	
		String arr[]=str.split("#");		
		for(int y=0;y<arr.length;y++)
		{
			System.out.println(arr[y]);
			out.println(arr[y]);
		}
	%>
	

</body>
</html>
