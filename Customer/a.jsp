<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Learning</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="css/site.css">
</head>
<style type="text/css">
<!--
.font-12-bNormal {	PADDING-LEFT: 5px; FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; TEXT-ALIGN: left; TEXT-DECORATION: none
}
.form-text {	PADDING-RIGHT: 5px; FONT-SIZE: 8pt; COLOR: #001555; FONT-FAMILY: tahoma; TEXT-ALIGN: right
}
.light-bluebg {	BACKGROUND-COLOR: #d0e0f1
}

.paddingall {	PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px
}
.paddingtop {	PADDING-BOTTOM: 4px; PADDING-TOP: 4px
}
-->
</style>
</head>
<style>
#sidebar {
	float: left;
	width: 225;
	margin: 0;	padding: 0; 
	display: inline;		
}
#sidebar ul.sidemenu {
	list-style:none;
	margin:10px 0 10px 15px;
	padding:0;		
}
#sidebar ul.sidemenu li {
	margin-bottom:1px;
	border: 1px solid #f2f2f2;
}
#sidebar ul.sidemenu a {
	display:block;
	color: #DB3C02;	
	text-decoration:none;	
	padding:2px 5px 2px 10px;
	background:  url(images/bg-top-nav.jpg);
	border-left:4px solid #CCC;	
	
	min-height:18px;
}

* html body #sidebar ul.sidemenu a { height: 18px; }

#sidebar ul.sidemenu a:hover {
	padding:2px 5px 2px 10px;
	background: #FF6600;
	color: #339900;
	border-left:4px solid #FFFFFF;
}

</style>
<script language="JavaScript" type="text/javascript">
<!--begin

function Search()
{
window.open("http://www.google.com/search?hl=en&ie=ISO-8859-1&q="+document.form.ysearch.value);
return;
}
-->
</script>
<script language="javascript" type="text/javascript">
function validation()
	{
		
		if(Form1.userid.value==""){
						//For User ID
						alert("Please Enter Your User ID");
						Form1.userid.focus();
						return false;
						}
				
		if(Form1.password.value==""){
						//For password
						alert("Please Enter Your Password");
						Form1.password.focus();
						return false;
						}
		if(Form1.cnfpassword.value==""){
						//For password
						alert("Please Enter Your Conform Password");
						Form1.cnfpassword.focus();
						return false;
						}
		if(Form1.cnfpassword.value!=Form1.password.value){
						alert("Conform Password Invalid");
						return false;
						}
		if (Form1.fname.value=="")
		{
						alert("Please Enter Your First Name");
						Form1.fname.focus();
						return false;
		}
		if (Form1.lname.value=="")
		{
					alert("Please Enter Your Last Name");
					Form1.lname.focus();
					return false;
		}
		if (Form1.email.value=="")
		{
					alert("Please Enter Your Mail Adress");
					Form1.email.focus();
					return false;
		}
		if (Form1.phone.value=="")
		{
					alert("Please Enter Your Phone No");
					Form1.phone.focus();
					return false;
		}
		
					return true;
	}

</script>
<script language="javascript" type="text/javascript">
function check()
{
window.open("chat.jsp");
}
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

 
<!-- ImageReady Slices (Business_2.psd) -->
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
        <tr>
          <td align="center" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
            <tr>
              <td height="10" align="center" valign="top" bgcolor="#44444E"></td>
            </tr>
            <tr>
              <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr><td width="15" bgcolor="#44444E">&nbsp;</td>
                  <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="5"><img src="images/temp_top_left_im.jpg" width="5" height="5" alt=""></td>
                      <td></td>
                      <td width="3"><img src="images/temp_top_right_im.jpg" width="5" height="5" alt=""></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
						
                          <td width="5">&nbsp;</td>
                          <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td align="center" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td height="80"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td><span class="black-heading-txt"><font color="#DB3C02">SQL Learning and Training</font></span></td>
                                        </tr>
                                        <tr>
                                          <td>&nbsp;</td>
                                        </tr>
                                      </table></td>
                                      <td align="right" valign="top"><table border="0" cellspacing="0" cellpadding="2">
									  
                                        <tr>
                                          <td>&nbsp;</td>
                                        </tr>
                                      </table></td>
                                    </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td align="center"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/bg-top-nav.jpg">
                                        <tr>
                                          <td width="4"><img src="images/left-top-nav.jpg" width="4" height="35"></td>
                                          <td align="center" class="navigation_text"><a href="index.htm">Home page</a></td>
                                          <td width="10"><img src="images/joint-top-nav.jpg" width="10" height="35"></td>
                                          <td align="center" class="navigation_text"><a href="aboutus.jsp">About us</a></td>
                                          <td width="10"><img src="images/joint-top-nav.jpg" width="10" height="35"></td>
                                         <td align="center" class="navigation_text"><a href="#" onClick="check()"></a></td>
                                          <td width="10"><img src="images/joint-top-nav.jpg" width="10" height="35"></td>
                                          <td align="center" class="navigation_text"><a href="contact.jsp">Contacts</a></td>
                                          <td width="10"><img src="images/joint-top-nav.jpg" width="10" height="35"></td>
                                          <td align="center" class="navigation_text"><a href="login.jsp">Login</a></td>
                                          <td width="5"><img src="images/right-top-nav.jpg" width="5" height="35"></td>
                                        </tr>
                                      </table></td>
									  
                                    </tr>
                                    <tr>
                                      <td height="2"></td>
                                    </tr>
                                    <tr>
                                      <td height="8" bgcolor="#DB3C02"></td>
                                    </tr>
                                  </table></td>
                                </tr>
                              </table></td>
                            </tr>
                            
                            <tr>
                              <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="126" valign="top">&nbsp;</td>
                                      <td width="936" align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="10">
                                       <tr>
                                              <td height="22" valign="top">&nbsp;</td>
                                            </tr>
                                      </table>


                                        <TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                                          <TBODY>
                                            <TR>
                                              <TD class="padding-2-lr mid-table-bg" vAlign=top 
                            align=left >
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							</TD>
                                            </TR>
                                            <TR>
                                              <TD height="2" align=left vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" 
                              border=0>
                                                  <TBODY>
                                                    <TR>
                                                      <TD vAlign=top align=left width=10><p>&nbsp;</p>
                                                        
														
														<%	
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
																<table align="center" class="reference" cellspacing="0" cellpadding="0" border="1"  width="100%">
																<tr><th align='left'><%=first%></th></tr>
															<%				
																Iterator it=vec.iterator();
																while(it.hasNext())
																{			
																	String st=it.next().toString();	
																	//out.println(st);			
																	%>
																	<tr><td valign="top" width="25%"><%= st %>&nbsp;</td></tr>
																			
																	<%
																	
																}	
																vec.removeAllElements();	
																
															}	
															%>
														
                                                       </TD>
                                                    </TR>
                                                  </TBODY>
                                              </TABLE></TD>
                                            </TR>
                                          </TBODY>
                                        </TABLE></td>
                                    </tr>
                                  </table></td>
                                </tr>
                              </table></td>
                            </tr>
                            <tr>
                              <td height="10" align="center" valign="top"></td>
                            </tr>
                          </table></td>
                          <td width="5">&nbsp;</td>
                        </tr>
                      </table></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td><img src="images/temp_foot_left_im.jpg" width="5" height="5" alt=""></td>
                      <td></td>
                      <td width="5"><img src="images/temp_foot_right_im.jpg" width="5" height="5" alt=""></td>
                    </tr>
                  </table></td>
				   <td width="15" bgcolor="#44444E">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td align="center" valign="top"><table width="100%" border="0" cellpadding="10" cellspacing="0" bgcolor="#44444E">
                <tr>
                  <td align="center"><span class="very_light_gray">Powered by: <a href="http://www.stupros.com" class="gray_link">Spiro Technologies</a></span></td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
<!-- End ImageReady Slices -->

</body>
</html>