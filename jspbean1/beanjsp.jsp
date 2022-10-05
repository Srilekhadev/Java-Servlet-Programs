<html>
<body>
<center><h1> Use of Java Bean in JSP
<br>

<jsp:useBean id="msgbean" class="textdemo.Textdemo" scope="session" />
	Value of msg property from bean :
<jsp:getProperty name="msgbean" property="msg" />

<jsp:setProperty name="msgbean" property="msg" value="College" />

<br><br>
	Value of msg property after setproperty from bean :
<jsp:getProperty name="msgbean" property="msg" />

</body>
</html>
