<html>
<head>
<title>Learning</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="css/site.css">
<style type="text/css">
<!--
.form-text1 {PADDING-RIGHT: 5px; FONT-SIZE: 8pt; COLOR: #001555; FONT-FAMILY: tahoma; TEXT-ALIGN: right
}
.form-text2 {PADDING-RIGHT: 5px; FONT-SIZE: 8pt; COLOR: #001555; FONT-FAMILY: tahoma; TEXT-ALIGN: center
}
-->
</style>
</head>
<style type="text/css">
<!--
.font-12-bNormal {	PADDING-LEFT: 5px; FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; TEXT-ALIGN: left; TEXT-DECORATION: none
}
.form-text {	PADDING-RIGHT: 5px; FONT-SIZE: 8pt; COLOR: #001555; FONT-FAMILY: tahoma; TEXT-ALIGN: center
}
.form-text1 {	PADDING-RIGHT: 5px; FONT-SIZE: 8pt; COLOR: #001555; FONT-FAMILY: tahoma; TEXT-ALIGN: right
}
.form-text2 {	PADDING-RIGHT: 5px; FONT-SIZE: 8pt; COLOR: #001555; FONT-FAMILY: tahoma; TEXT-ALIGN: center
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
	
	min-height :18px;
}

* html body #sidebar ul.sidemenu a { height: 18px; }

#sidebar ul.sidemenu a:hover {
	padding:2px 5px 2px 10px;
	background: #FF6600;
	color: #339900;
	border-left:4px solid #FFFFFF;
}

</style>

<script>
	function file()
	{
		 alert();		
		 document.form1.action = "Key";
		 document.form1.submit();		
		//self.moveTo(50,50);
	}
</script>

<script>
	function file1()
	{
		 alert();
		 var str=document.getElementById("submit").value;	
		 document.form1.action = "R1?formname=form1";
		 document.form1.submit();
	}

</script>

<script>
	function second()
	{
		alert();
		document.form2.action = "Key";
		document.form2.submit();
	}

</script>

<script>
	function second1()
	{
		 alert();
		 document.form2.action = "R1?formname=form2";
		 document.form2.submit();
	}

</script>

<script language="JavaScript" type="text/javascript">
<!--begin

function Search()
{
window.open("http://www.google.com/search?hl=en&ie=ISO-8859-1&q="+document.form.ysearch.value);
return;
}
-->
</script>
<script type="text/javascript">
function button()
{
		var xmlHttp;
		var str = document.getElementById("subject").value;
		alert(str);
		try
 		 {
			  // Firefox, Opera 8.0+, Safari
			  xmlHttp=new XMLHttpRequest();
  		  }
			catch (e)
			  {
			  // Internet Explorer
					  try
						{
						xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
						}
  						catch (e)
  						  {
								try
								  {
								  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
								  }
    							catch (e)
      							{
									  alert("Your browser does not support AJAX!");
									  return false;
     							 }
   							 }
 			 }
  		xmlHttp.onreadystatechange=function()
   		 {	
    		if(xmlHttp.readyState==4)
      			{
					  alert(xmlHttp.responseText);
					  var ser=document.getElementById("tab").innerHTML=xmlHttp.responseText;
					  //document.getElementById("hello").value
					  var f=xmlHttp.responseText;
     			 }
    		}
		  xmlHttp.open("POST","Search.jsp?subject="+str,true);
		  xmlHttp.send(null);

  //setTimeout("ajaxFunction()",1000);
  } 

</script>

<script language="javascript" type="text/javascript">
function validation()
	{
		
		if(Formmain.userid.value==""){
						//For User ID
						alert("Please Enter Your User ID");
						Formmain.userid.focus();
						return false;
						}
				
		if(Formmain.password2.value==""){
						//For password
						alert("Please Enter Your Password");
						Formmain.password2.focus();
						return false;
						}
		if(Formmain.cnfpassword.value==""){
						//For password
						alert("Please Enter Your Conform Password");
						Formmain.cnfpassword.focus();
						return false;
						}
		if(Formmain.cnfpassword.value!=Formmain.password2.value){
						alert("Conform Password Invalid");
						return false;
						}
		if(Formmain.fname.value==""){
						alert("Please Enter Your Confirm Password");
						Formmain.fname.focus();
						return false;
						}
		if (Formmain.lname.value==""){							
					alert("Please Enter Your Last Name");
					Formmain.lname.focus();
					return false;
					}
		if (Formmain.email2.value==""){
					alert("Please Enter Your Mail Adress");
					Formmain.email2.focus();
					return false;
					}
		if (Formmain.phone.value==""){		
					alert("Please Enter Your Phone No");
					Formmain.phone.focus();
					return false;
					}
		
					return true;
	}

</script>
<SCRIPT language="javascript" type="text/javascript">
					  
					  function valid(){
					  
						if(Forms.userid2.value==""){
						//For User ID
						alert("Please Enter Your User ID");
						Forms.userid2.focus();
						return false;
						}
				
						if(Forms.password.value==""){
						//For password
						alert("Please Enter Your Password");
						Forms.password.focus();
						return false;
						}
						
					return true;

						}	

           </SCRIPT>
    <SCRIPT language=javascript type="text/javascript">
					
					function valid1(){
			if(Form2.username.value==""){
				alert("Please enter your name!");
				Form2.username.focus();
				return false;
			}
			if(Form2.company.value==""){
				alert("Please enter company name!");
				Form2.company.focus();
				return false;
			}
						
			if(Form2.email.value==""){
				alert("Please enter email address!");
				Form2.email.focus();
				return false;
			}

			if(Form2.contact.value==""){
				alert("Please enter contact number!");
				theForm.contact.focus();
				return false;
			}
												
			if(Form2.requirements.value.length==0){
				alert("Please enter your requirements!");
				Form2.requirements.focus();
				return false;
			}
															
												
			
			return true;
			}
			
			 
  </SCRIPT>
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
              <tr>
                <td width="15" bgcolor="#44444E">&nbsp;</td>
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
                        <td width="10">&nbsp;</td>
                        <td width="1057" align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                                        <td><span class="black-slogan-txt"><font class="light_gray_text">The Globe for Learning </font></span></td>
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
                                        <td width="308" align="center" class="navigation_text"><a href="index.htm">Home page</a></td>
                                        <td width="10"><img src="images/joint-top-nav.jpg" width="10" height="35"></td>
                                        <td width="239" align="center" class="navigation_text"><a href="aboutus.jsp">About us</a></td>
                                        <td width="10"><img src="images/joint-top-nav.jpg" width="10" height="35"></td>
                                       
                                        <td width="239" align="center" class="navigation_text"><a href="contact.jsp">Contacts</a></td>
                                        <td width="10"><img src="images/joint-top-nav.jpg" width="10" height="35"></td>
                                        <td width="204" align="center" class="navigation_text"><a href="login.jsp">LogOut</a></td>
                                        <td width="20"><img src="images/right-top-nav.jpg" width="5" height="35"></td>
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
                                    <td width="250" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td align="center" valign="top"><table width="93%" border="0" cellspacing="3" cellpadding="0">
                                          <tr>
                                            <td height="25" valign="bottom"><span class="orange_bold_text">Online</span> <span class="gray_bold_text">Tutorials</span></td>
                                          </tr>
                                          <tr>
                                            <td height="1" bgcolor="#999999"></td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td height="15"><div id="sidebar">
                                                  <ul class="sidemenu">
                                                    <li><a href="index.jsp"><font face="Tohama" color="#FFFFFF">SQL home</font></a></li>
                                                    <li><a href="SQLsyntax.jsp"><font color="#FFFFFF" face="Tohama">SQL Syntax </font></a></li>
                                                    <li><a href="SQLSelect.jsp"><font face="Tohama" color="#FFFFFF">SQL Select</font></a></li>
                                                    <li><a href="Distinct.jsp"><font face="Tohama" color="#FFFFFF">SQL Distinct</font></a></li>
                                                    <li><a href="Where.jsp"><font face="Tohama" color="#FFFFFF">SQL Where</font></a></li>
                                                    <li><a href="And.jsp"><font face="Tohama" color="#FFFFFF">SQL And or Or</font></a></li>
                                                    <li><a href="Orderby.jsp"><font face="Tohama" color="#FFFFFF">SQL Order by</font></a></li>
                                                    <li><a href="Insert.jsp"><font face="Tohama" color="#FFFFFF">SQL Insert</font></a></li>
                                                    <li><a href="Update.jsp"><font face="Tohama" color="#FFFFFF">SQL Update</font></a></li>
                                                    <li><a href="Delete.jsp"><font face="Tohama" color="#FFFFFF">SQL Delete</font></a></li>
                                                    <li><a href="Top.jsp"><font face="Tohama" color="#FFFFFF">SQL Top</font></a></li>
                                                    <li><a href="Like.jsp"><font face="Tohama" color="#FFFFFF">SQL Like</font></a></li>
                                                    <li><a href="wildCards.jsp"><font face="Tohama" color="#FFFFFF">SQL WildCards</font></a></li>
                                                    <li><a href="In.jsp"><font face="Tohama" color="#FFFFFF">SQL In</font></a></li>
                                                    <li><a href="Between.jsp"><font face="Tohama" color="#FFFFFF">SQL Between</font></a></li>
                                                    <li><a href="Alias.jsp"><font face="Tohama" color="#FFFFFF">SQL Alias</font></a></li>
                                                    <li><a href="Joins.jsp"><font face="Tohama" color="#FFFFFF">SQL Joins</font></a></li>
                                                    <li><a href="InnerJoin.jsp"><font face="Tohama" color="#FFFFFF">SQL Inner Join</font></a></li>
                                                    <li><a href="Leftjoin.jsp"><font face="Tohama" color="#FFFFFF">SQL Left Join</font></a></li>
                                                    <li><a href="Rightjoin.jsp"><font face="Tohama" color="#FFFFFF">SQL Right Join</font></a></li>
                                                    <li><a href="Fulljoin.jsp"><font face="Tohama" color="#FFFFFF">SQL Full Join</font></a></li>
                                                    <li><a href="Union.jsp"><font face="Tohama" color="#FFFFFF">SQL Union</font></a></li>
                                                    <li><a href="CreateDB.jsp"><font face="Tohama" color="#FFFFFF">SQL Create DB</font></a></li>
                                                    <li><a href="CreateTable.jsp"><font face="Tohama" color="#FFFFFF">SQL Create Table</font></a></li>
                                                    <li><a href="Average.jsp"><font face="Tohama" color="#FFFFFF">SQL Average</font></a></li>
                                                    <li><a href="Max.jsp"><font face="Tohama" color="#FFFFFF"> SQL Max</font></a></li>
                                                    <li><a href="Min.jsp"><font face="Tohama" color="#FFFFFF">SQL Min</font></a></li>
                                                    <li><a href="First.jsp"><font face="Tohama" color="#FFFFFF">SQL first</font></a></li>
                                                    <li><a href="Last.jsp"><font face="Tohama" color="#FFFFFF">SQL Last</font></a></li>
                                                  </ul>
                                                </div>
                                                                          <p class="black_bold_tixt">&nbsp;</p></td>
                                                <td width="15" rowspan="5">&nbsp;</td>
                                              </tr>
                                              <tr>
                                                <td height="3"></td>
                                              </tr>
                                              <tr>
                                                <td height="15">&nbsp;</td>
                                              </tr>
                                              <tr>
                                                <td valign="top" ><span class="black-normal-txt">
                                                  <p align="justify">&nbsp;</p>
                                                </span></td>
                                              </tr>
                                              <tr>
                                                <td height="3"></td>
                                              </tr>
                                              <tr>
                                                <td align="right"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                  <tr>
                                                    <td width="15" align="right"></td>
                                                  </tr>
                                                </table></td>
                                              <tr>
                                                <td height="3"></td>
                                              </tr>
                                            </table></td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td align="center" valign="top"></td>
                                      </tr>
                                    </table></td>
                                    <td align="center" valign="top"><table width="98%" height="862" bordercolor="#666666" bordercolordark="#FF6600">
                                      <tbody>
                                        <tr>
                                          <td height="30px"></td>
                                        </tr>
                                        <tr>
                                          <td height="326" align=left valign=top class=middle-table-padding><table width="100%" height="770" border=1  align="center" cellpadding=0 cellspacing=0 bgcolor="#FFFFFF" >
                                            <tbody>
                                              <tr>
                                                <td height="109" valign=top class=padding-lr ><h2>
                                                  <p>SQL quick Reference</p>
                                                </h2>
                                                                        <hr>
                                                                        <h2>Test your SQL Skills</h2>
                                                  <p>On this page you can test your SQL skills.</p>
                                                  <p>We will use the <b>Customersdetails</b> table in the Customer 
                                                    database:</p>
                                                  <table class=reference cellspacing=0 cellpadding=0 
                  width="100%" border=1>
                                                                          <tbody>
                                                                            <tr>
                                                                              <th align=left>CompanyName</th>
                                                                              <th align=left>ContactName</th>
                                                                              <th align=left>Address</th>
                                                                              <th align=left>City</th>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Alfreds Futterkiste&nbsp;</td>
                                                                              <td valign=top>Maria Anders&nbsp;</td>
                                                                              <td valign=top>Obere Str. 57&nbsp;</td>
                                                                              <td valign=top>Berlin&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Berglunds snabbköp&nbsp;</td>
                                                                              <td valign=top>Christina Berglund&nbsp;</td>
                                                                              <td valign=top>Berguvsvägen 8&nbsp;</td>
                                                                              <td valign=top>Luleå&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Centro comercial Moctezuma&nbsp;</td>
                                                                              <td valign=top>Francisco Chang&nbsp;</td>
                                                                              <td valign=top>Sierras de Granada 9993&nbsp;</td>
                                                                              <td valign=top>México D.F.&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Ernst Handel&nbsp;</td>
                                                                              <td valign=top>Roland Mendel&nbsp;</td>
                                                                              <td valign=top>Kirchgasse 6&nbsp;</td>
                                                                              <td valign=top>Graz&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>FISSA Fabrica Inter. Salchichas 
                                                                                S.A.&nbsp;</td>
                                                                              <td valign=top>Diego Roel&nbsp;</td>
                                                                              <td valign=top>C/ Moralzarzal, 86&nbsp;</td>
                                                                              <td valign=top>Madrid&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Galería del gastrónomo&nbsp;</td>
                                                                              <td valign=top>Eduardo Saavedra&nbsp;</td>
                                                                              <td valign=top>Rambla de Cataluña, 23&nbsp;</td>
                                                                              <td valign=top>Barcelona&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Island Trading&nbsp;</td>
                                                                              <td valign=top>Helen Bennett&nbsp;</td>
                                                                              <td valign=top>Garden House Crowther Way&nbsp;</td>
                                                                              <td valign=top>Cowes&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Königlich Essen&nbsp;</td>
                                                                              <td valign=top>Philip Cramer&nbsp;</td>
                                                                              <td valign=top>Maubelstr. 90&nbsp;</td>
                                                                              <td valign=top>Brandenburg&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Laughing Bacchus Wine Cellars&nbsp;</td>
                                                                              <td valign=top>Yoshi Tannamuri&nbsp;</td>
                                                                              <td valign=top>1900 Oak St.&nbsp;</td>
                                                                              <td valign=top>Vancouver&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Magazzini Alimentari Riuniti&nbsp;</td>
                                                                              <td valign=top>Giovanni Rovelli&nbsp;</td>
                                                                              <td valign=top>Via Ludovico il Moro 22&nbsp;</td>
                                                                              <td valign=top>Bergamo&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>North/South&nbsp;</td>
                                                                              <td valign=top>Simon Crowther&nbsp;</td>
                                                                              <td valign=top>South House 300 Queensbridge&nbsp;</td>
                                                                              <td valign=top>London&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Paris spécialités&nbsp;</td>
                                                                              <td valign=top>Marie Bertrand&nbsp;</td>
                                                                              <td valign=top>265, boulevard Charonne&nbsp;</td>
                                                                              <td valign=top>Paris&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Rattlesnake Canyon Grocery&nbsp;</td>
                                                                              <td valign=top>Paula Wilson&nbsp;</td>
                                                                              <td valign=top>2817 Milton Dr.&nbsp;</td>
                                                                              <td valign=top>Albuquerque&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Simons bistro&nbsp;</td>
                                                                              <td valign=top>Jytte Petersen&nbsp;</td>
                                                                              <td valign=top>Vinbæltet 34&nbsp;</td>
                                                                              <td valign=top>København&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>The Big Cheese&nbsp;</td>
                                                                              <td valign=top>Liz Nixon&nbsp;</td>
                                                                              <td valign=top>89 Jefferson Way Suite 2&nbsp;</td>
                                                                              <td valign=top>Portland&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Vaffeljernet&nbsp;</td>
                                                                              <td valign=top>Palle Ibsen&nbsp;</td>
                                                                              <td valign=top>Smagsløget 45&nbsp;</td>
                                                                              <td valign=top>Århus&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                              <td valign=top>Wolski Zajazd&nbsp;</td>
                                                                              <td valign=top>Zbyszek Piestrzeniewicz&nbsp;</td>
                                                                              <td valign=top>ul. Filtrowa 68&nbsp;</td>
                                                                              <td valign=top>Warszawa&nbsp;</td>
                                                                            </tr>
                                                                          </tbody>
                                                  </table>
                                                  <p>To preserve space, the table above is a subset of the 
                                                    Customers table used in the example below.</p>
                                                  <hr>
                                                                        <h2>Try it Yourself</h2>
                                                                        <hr>
                                                   <form action="" method="post"  target=_blank name="form1" >
                                                   <table width="764">
                                                        <tr>
                                                          <td width="384" align="left"><p class="gray_bold_text">Select All details fom the Customerdetails table</p>
                                                            <p class="gray_bold_text">&nbsp;</p>
                                                          <p class="gray_bold_text">&nbsp;</p>
                                                          <p class="gray_bold_text">&nbsp;</p></td>
                                                          <td width="221">&nbsp;&nbsp;&nbsp;
                                                            <textarea name=sql rows=10 cols=32> </textarea></td>
                                                       <td width="143" align="center"><input name="submit" style="width:115px" type=submit value="Submit" onClick="file()">
                                                       <p class="gray_bold_text">&nbsp;</p>
                                                               <p class="gray_bold_text">
                                                                            <input name="submit2" type=submit value="See the Result" onClick="file1()">
                                                               </p>
                                                   <p class="gray_bold_text">&nbsp;</p></td>
                                                                    </tr>
                                                                  </table>
                                                                </form>
																<hr>															
																
																
																<form action="" method="post" target=_blank name="form2">
																<table>
                                                                    <tr>
                                                                      <td align="left"><p class="gray_bold_text">Select only the 'companyname' and 'contactname' from the  Customerdetails table</p>
                                                                          <p class="gray_bold_text">&nbsp;</p>
                                                                        <p class="gray_bold_text">&nbsp;</p>
                                                                        <p class="gray_bold_text">&nbsp;</p></td>
                                                                      <td>&nbsp;&nbsp;&nbsp;
                                                                          <textarea name=sql rows=10 cols=32> </textarea>
                                                                      </td>
                                                                      <td width="150" align="center"><input name="submit" style="width:115px" type=submit value="Submit" onClick="second()">
                                                                          <p class="gray_bold_text">&nbsp;</p>
                                                                        <p class="gray_bold_text">
                                                                            <input name="submit2" type=submit value="See the Result" onClick="second1()">
                                                                        </p>
                                                                        <p class="gray_bold_text">&nbsp;</p></td>
																		
																		
                                                                    </tr>
                                                                  </table></form><hr>
																
																
																
																
                                            <br>
                                          </td>
                                          <td></td>
                                        </tr>
                                      </tbody>
                                    </table></td>
                                  </tr>
                                  <!--Bottom End-->
                                </table></td>
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
            <td align="center"><span class="very_light_gray">Powered by: Spiro Technologies</span></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<!-- End ImageReady Slices -->
</body>
</html>