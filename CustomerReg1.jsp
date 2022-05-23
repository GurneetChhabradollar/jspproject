<%@ include file="a3.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="pojo.Customer" %>
<%@ page import="pojo.Logindata" %>
<%@ page import="program.AdminDataController" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String p,q,r,s,t;
p=request.getParameter("T1");
q=request.getParameter("T2");
r=request.getParameter("T3");
s=request.getParameter("T4");
t=request.getParameter("T5");

int a=Integer.parseInt(r);
Customer c1 =new Customer();
c1.setCustomer_name(p);
c1.setAddress(q);
c1.setContact(a);
c1.setCustomer_id(s);
c1.setPassword(t);
Logindata lgn=new Logindata();
lgn.setUserid(s);
lgn.setPassword(t);
lgn.setUsertype("customer");
AdminDataController controller=new AdminDataController();
int aa=controller.saveCustomer(c1,lgn);
String msg="data not saved";
if(aa==1)
{
	msg="data saved successfully";
}
%>
<%= msg %>
</body>
</html>
<%@ include file="a4.jsp" %>