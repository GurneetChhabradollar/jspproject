<%@ include file="a1.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="pojo.Medicine" %>
<%@ page import="pojo.Customer" %>
<%@ page import="pojo.Sales" %>
<%@ page import="program.AdminDataController" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String p,q,r,s,t,u,v;
p=request.getParameter("T1");
q=request.getParameter("H1");
r=request.getParameter("H2");
s=request.getParameter("H3");
t=request.getParameter("H4");
u=request.getParameter("H5");
v=request.getParameter("H6");
int a=Integer.parseInt(p);
int b=Integer.parseInt(v);
int c=Integer.parseInt(r);
int sp=a*b;
Sales sale=new Sales();
sale.setCustomer_id(t);
sale.setCustomer_name(u);
sale.setManufacturer(s);
sale.setMedid(c);
sale.setName(q);
sale.setPrice(b);
sale.setQuantity(a);
sale.setSellingprice(sp);
AdminDataController controller=new AdminDataController();
int aa=controller.sellMedicine(sale);
String msg="data not saved";
if(aa==1)
{
	msg="data saved successfully";
}
%>
<%= msg %>
</body>
</html>
<%@ include file="a2.jsp" %>