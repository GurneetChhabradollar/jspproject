<%@ include file="a1.jsp" %>
<%@page import="pojo.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="pojo.Medicine" %>
<%@ page import="pojo.Sales" %>
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
</head>
<body>
<%
String p;
p=request.getParameter("H1");
Medicine med=new Medicine();
Customer c1=new Customer();
AdminDataController controller=new AdminDataController();
med=controller.fetchMedicine(p);
c1=controller.fetchCustomer(email);
%>
<form method="post" action="BuyMedicine1.jsp">
<input type="hidden" value="<%= med.getName() %>" name="H1"/>
<input type="hidden" name="H2" value="<%= med.getMedid() %>"/>
<input type="hidden" name="H3" value="<%= med.getManufacturer() %>"/>
<input type="hidden" value="<%= email %>" name="H4"/>
<input type="hidden" value="<%= c1.getCustomer_name() %>" name="H5"/>

<p>Price: <input type="text" readonly value="<%= med.getPrice() %>" name="H6"/></p>
<p>Enter Quantity :<input type="text" name="T1"/></p>
<input type="submit" value="buy"/>
</form>
</body>
</html>
<%@ include file="a2.jsp" %>