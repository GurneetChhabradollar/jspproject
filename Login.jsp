<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<script type="text/javascript" src="js/jquery.js"></script>


<style>
body
{
	background: url(pharmacy.jpg);
	background-size: cover;
}
.loginbox
{
	position: absolute;
	top:50%;
	left:50%;
	transform:translate(-50%,-50%);
	width:350px;
	height:420px;
	padding:80px 40px;
	box-sizing:border-box;
	background:rgba(0,0,0,.1);
}
#a1
{
	margin-top: 50px;
}
#a2
{
	margin-top: 20px;
	width:270px;
	background-color: white;
}
#a3
{
	width:270px;
	background-color: yellow;
}
</style>
</head>

<body>
<h1 align="center"> Medicine Finder</h1>
<div class="loginbox">
<form method="post" action="CheckLogin.jsp">
<table id="a1">
<tr>
<td>
<p style="background-color:DodgerBlue; color:white;">Username</p>
</td>
<td>
<p><input type="text" placeholder="Enter Username" required name="T1"/></p>
</td>
</tr>
<tr>
<td>
<p style="background-color:DodgerBlue; color:white;">Password</p>
</td>
<td>
<p><input type="text" placeholder="Enter Password" required name="T2"/></p>
</td>
</tr>
</table>
<p ><input id="a2" type="submit" value="Sign in"/></p>
</form>
<form method="post" action="CustomerReg.jsp">
<p style="margin-top:20px; color:black; font-weight:bold;">Register Here</p>
<p><input id="a3" type="submit" value="Sign up"/></p>
</form>
</div>
</body>
</html>