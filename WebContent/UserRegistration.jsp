<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript">
	
		function validate(){  
			var username=document.myform.ename.value;
			var status=false;  
		if(username.length<1)
			{  
			document.getElementById("nameloc").innerHTML=  
			"<img src='images/unchecked.gif'/>Name cannot be blank";  
			status=false;  
			}
		else 
			{  
			document.getElementById("nameloc").innerHTML="<img src='images/checked.gif'/>";  
			status=true;  
			}
		}
		function validate1(){  
			var username=document.myform.eadd.value;
			var status=false;  
			if(username.length<1)
			{  
				document.getElementById("nameloc1").innerHTML=  
				"<img src='images/unchecked.gif'/> Address cannot be blank";  
				status=false;  
			}
			else
			{  
				document.getElementById("nameloc1").innerHTML="<img src='images/checked.gif'/>";  
				status=true;  
			}
		}
		function validate2(){  
			var username=document.myform.uname.value;
			var status=false;  
			if(username.length<1)
			{  
				document.getElementById("nameloc3").innerHTML=  
				"<img src='images/unchecked.gif'/> Enter ur user name ";  
				status=false;  
			}
			else
			{  
				document.getElementById("nameloc3").innerHTML="<img src='images/checked.gif'/>";  
				status=true;  
			}
		}
		function validate3(){
			var password=document.myform.pass.value;
			var status=false;
		if(password.length<8 || password.length>8)
			{  
			document.getElementById("passloc").innerHTML=  
			"<img src='images/unchecked.gif'/>Enter 8 digit password only";  
			status=false;  
			}
		else
			{  
			document.getElementById("passloc").innerHTML="<img src='images/checked.gif'/>";  
			status=true;  
			}
		}
		function validateemail()  
		{  
			var x=document.myform.eemail.value;  
			var atposition=x.indexOf("@");  
			var dotposition=x.lastIndexOf(".");  
		if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
			{ 
			document.getElementById("emailloc").innerHTML="<img src='images/unchecked.gif'/> Enter your correct email address";  
				status=false; 
			}
		else
			{

			document.getElementById("emailloc").innerHTML="<img src='images/checked.gif'/>";  
			status=true; 
			}
		
		}
		
		function validateMobile(){
			var emobile=document.myform.emobile.value;
			var status=false;
			if(emobile.length<10 || emobile.length>10)
			{  
				document.getElementById("mobileloc").innerHTML=  
				"<img src='images/unchecked.gif'/>Enter 10 digit mobile number";  
				status=false;  
			}
			else
			{  
				document.getElementById("mobileloc").innerHTML="<img src='images/checked.gif'/>";  
				status=true;  
			}
		}
		
		function occupation(){  
			var edesignation=document.myform.edesignation.value;
			var status=false;  
			if(edesignation.length<1)
			{  
				document.getElementById("edesignationloc").innerHTML=  
				"<img src='images/unchecked.gif'/>Occupation cannot be blank";  
				status=false;  
			}
			else 
			{  
				document.getElementById("edesignationloc").innerHTML="<img src='images/checked.gif'/>";  
				status=true;  
			}
		}
		
		function Questionanswer(){  
			var answer=document.myform.answer.value;
			var status=false;  
			if(answer.length<1)
			{  
				document.getElementById("answerloc").innerHTML=  
				"<img src='images/unchecked.gif'/>Answer cannot be blank";  
				status=false;  
			}
			else 
			{  
				document.getElementById("answerloc").innerHTML="<img src='images/checked.gif'/>";  
				status=true;  
			}
		}
		
</script>
</head>
<body id="top">
	<div class="wrapper col1" style="background-color:white;height:180px;">
	<img src="images/DigiIcon.png"></img>
		<div id="header">
			<div id="logo">
				<p>
					<strong></strong>
				</p>
			</div>

			<br class="clear" />
		</div>
	</div>
	<div class="wrapper col2">
		<div id="topbar">
			<div id="topnav">
				<ul>
					<li><a href="index.jsp">Home</a></li>
				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>

	<div class="wrapper col5">
		<div id="container">
			<div id="content">
				<form id="form1" enctype="multipart/form-data" action="addphoto"
					method="post" name="myform">
					<fieldset style="width: 550px;">
						<table bgcolor="white">
							<tr>
								<center>
									<strong><h3>
											<font color="#428bca">New User Registration</font>
										</h3></strong>
									</td>
								</center>
							</tr>
							<tr>
								<td width="28%" rowspan="12">
									<div align="center">
										<img src="images/New_User.png" width="180" height="150" />
									</div>
								</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td><strong>Name</strong></td>
								<td>:</td>
								<td><input type="text" name="ename" id="ename"
									onblur="return validate()"
									style="width: 185px; height: 20px; border-radius: 8px;"><span
									id="nameloc"></span></td>
							</tr>
							<tr>
								<td><strong>Address</strong></td>
								<td>:</td>
								<td><input type="text" name="eadd" id="eadd"
									onblur="return validate1()"
									style="width: 185px; height: 20px; border-radius: 8px;"><span
										id="nameloc1"></span></td>
							</tr>
							<tr>
								<td><strong>Mobile</strong></td>
								<td>:</td>
								<td><input type="text" name="emobile" id="emobile"
									onblur="return validateMobile()"
									style="width: 185px; height: 20px; border-radius: 8px;"><span
										id="mobileloc"></span></td>
							</tr>
							<tr>
								<td><strong>Email</strong></td>
								<td>:</td>
								<td><input type="text" name="eemail" id="eemail"
									style="width: 185px; height: 20px; border-radius: 8px;"
									onblur="return validateemail()"><span id="emailloc"></span></td>
							</tr>
							<tr>
								<td><strong>Occupation</strong></td>
								<td>:</td>
								<td><input type="text" name="edesignation" id="edesignation" onblur="return occupation()"
									style="width: 185px; height: 20px; border-radius: 8px;"><span id="edesignationloc"></span></td>
							</tr>

							<tr>
								<td><strong>User Photo</strong></td>
								<td>:</td>
								<td><input type="file" name="photo"
									style="width: 185px; height: 20px; border-radius: 8px;"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td><strong><font color="blue">Image Upload
											less than 100kb</font></strong></td>
							</tr>
							<tr>
								<td><strong>User Id</strong></td>
								<td>:</td>
								<td><input type="text" name="uname" id="uname"
									style="width: 185px; height: 20px; border-radius: 8px;"
									onblur="return validate2()"><span id="nameloc3"></span></td>
							</tr>
							<tr>
								<td><strong>Password</strong></td>
								<td>:</td>
								<td><input type="password" name="pass" id="pass"
									style="width: 185px; height: 20px; border-radius: 8px;"
									onblur="return validate3()"><span id="passloc"></span></td>
							</tr>
							<tr>
								<td><strong>Security Question</strong></td>
								<td>:</td>
								<td><select name="question"
									style="width: 195px; height: 25px; border-radius: 8px;">
										<option>Select</option>
										<option>Who is your favourate player?</option>
										<option>Which Song do you like most?</option>
										<option>Which Movie do you like most?</option></td>
							</tr>
							<tr>
								<td><strong>Answer</strong></td>
								<td>:</td>
								<td><input type="text" name="answer" id="answer" onblur="return Questionanswer()"
									style="width: 185px; height: 20px; border-radius: 8px;"><span id="answerloc"></span></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td><input type="submit" value="Register"
									style="height: 25px; color: white; background-color: #428bca; border-radius: 8px;">&nbsp;<input
										type="reset" value="Cancel"
										style="height: 25px; color: white; background-color: #428bca; border-radius: 8px;"></td>
							</tr>
						</table>
						<a href="index.jsp">Already Register!!! Please Login Here</a>
					</fieldset>
				</form>

			</div>

			<div id="column"></div>
			<br class="clear" />
		</div>
		<br><br><br><br>
						<div class="wrapper col7">
							<div id="copyright">
								<p class="fl_left">Copyright &copy; 2016 - All Rights
									Reserved.</p>
								<br class="clear" />
							</div>
						</div>
</body>
</html>




