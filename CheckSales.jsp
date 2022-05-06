<%@ include file="a5.jsp"%> 
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page import="pojo.Sales" %>
<%@ page import="program.AdminDataController" %>

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
AdminDataController controller=new AdminDataController();
List<Sales> lst=new ArrayList<Sales>();
lst=controller.checkSales();
if(lst.isEmpty())
{
%>
<h1>No sales To Show</h1>
<% 
}
else
{
for(Sales sale:lst)
{
	
	%>
	<h3>Transaction Id: <%= sale.getTransaction_id() %></h3>
	<p>Customer email: <%= sale.getCustomer_id() %></p>
	<p>Customer Name: <%=  sale.getCustomer_name() %></p>
	<p>Medicine Name: <%= sale.getName() %></p>
	<p>Medicine Id: <%= sale.getMedid() %></p>
	<p>Manufaturer: <%= sale.getManufacturer() %></p>
	<p>Quantity Sold: <%=  sale.getQuantity() %></p>
	<p>Price: <%= sale.getPrice() %></p>
	<p>Selling Price: <%= sale.getSellingprice() %></p>
	
	<%
}
}
%>
</body>
</html>
<%@ include file="a6.jsp"%>