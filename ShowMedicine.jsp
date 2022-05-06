<%@ include file="a5.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Medicine"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="program.AdminDataController" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<Medicine> lst=new ArrayList<Medicine>();
AdminDataController controller=new AdminDataController();
lst=controller.fetchAll();
if(lst.isEmpty())
{
	%>
<h1>No Medicines To Show</h1>
	
<%
}
else
{
for(Medicine med:lst)
{
	
	%>
	<h3><%= med.getName() %></h3>
	<p>Medicine Id:<%= med.getMedid() %></p>
	<p>Manufacturer:<%= med.getManufacturer() %></p>
	<p>Price:<%= med.getPrice() %></p>
	<form method="post" action="EditMedicine.jsp"> 
	<input type="hidden" name="H1" value="<%= med.getName() %>"/>
	<input type="submit" value="Edit"/>
	</form>
	<% 
}
}
%>
</body>
</html>
<%@ include file="a6.jsp" %>