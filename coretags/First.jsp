<%@ page contentType ="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<form method=post action="first.jsp">
Name : <input type=text name="text1" value=" "> <br><br>
<input type=submit value="Enter">
</form>
Name:<c:out value="${param.text1}" /><br>
</body>
</html>
