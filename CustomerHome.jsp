<%@ include file="a1.jsp" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="pojo.Logindata" %>
<%@ page import="pojo.Medicine" %>
<%@ page import="program.AdminDataController" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
session=request.getSession(false);
String email=session.getAttribute("userid").toString();
%>
<style>
.a1
{
	margin-top:30px;
	height:100px;
}
.w1
{
	float:left;
	margin-left:300px;
}
.s1
{
	float:right;
	margin-right:100px;
}
.a2
{
	border:1px solid green;
	margin-left:20%;
	margin-right:20%;
	width:800px;
	min-height:400px;
	padding:30px;
}
</style>
</head>
<body>
<div class="a1">
<h1 class="w1">Welcome</h1>
<form class="s1" method="post" action="SearchMedicine.jsp">
<input type="text" placeholder="Search Medicine Here" name="T1"/>
<input type="submit" value="search" />
</form>
</div>
<% 
AdminDataController controller=new AdminDataController();
List<Medicine> lst=controller.fetchAll();
if(lst.isEmpty())
{
	%>
	<h1 style="margin-left:300px;">DataBase is empty<h1>
	
<% 
}
for(Medicine med:lst)
	{
		%>
		<div class="a2">
		<h5><%= med.getName() %></h5>
		<p><%= med.getManufacturer() %></p>
		<p><%= med.getPrice() %></p>
		<form method="post" action="BuyMedicine.jsp">
		<input type="hidden" name="H1" value="<%= med.getName() %>"/>
		<input type="submit" value="buy"/>
		</form>
		</div>
		<% 
	}
%>
<%@ include file="a2.jsp" %>