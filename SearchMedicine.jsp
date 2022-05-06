<%@ include file="a1.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="pojo.Medicine" %>
<%@ page import="program.AdminDataController" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try{
String p;
p=request.getParameter("T1");
AdminDataController controller=new AdminDataController();
Medicine med=controller.fetchMedicine(p);
%>
<h3><%= med.getName() %></h3>
<p>Medicine Id:<%= med.getMedid() %></p>
<p>Manufacturer:<%= med.getManufacturer() %></p>
<p>Price:<%= med.getPrice() %></p>
<form method="post" action="BuyMedicine.jsp">
<input type="hidden" name="H1" value="<%= med.getName() %>"/>
<input type="submit" value="buy"/>
</form>
<% 
}
catch(NullPointerException e)
{
	out.println("Database is empty");
}
%>
</body>
</html>
<%@ include file="a2.jsp" %>