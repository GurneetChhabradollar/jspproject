<%@ include file="a5.jsp" %>
<%@page import="pojo.Medicine"%>
<%@page import="program.AdminDataController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String p;
p=request.getParameter("H1");
AdminDataController controller=new AdminDataController();
Medicine med=controller.fetchMedicine(p);
%>
<h3>Details of <%= p %></h3>
<form method="post" action="EditMedicine1.jsp">
<input type="hidden" name="H1" value="<%= med.getName() %>"/>
Medicine ID:<%= med.getMedid() %>
Manufacturer:<%= med.getManufacturer() %>
Price:<%= med.getPrice() %>
Enter New Price:<input type="text" name="T1"/>
<input type="submit" value="Edit"/>
</form>
</body>
</html>
<%@ include file="a6.jsp" %>