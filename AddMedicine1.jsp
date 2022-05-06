<%@ include file="a5.jsp" %>
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
String p,q,r,s;
p=request.getParameter("T1");
q=request.getParameter("T2");
r=request.getParameter("T3");
s=request.getParameter("T4");
Medicine med=new Medicine();
med.setMedid(Integer.parseInt(p));
med.setName(q);
med.setManufacturer(r);
med.setPrice(Integer.parseInt(s));
AdminDataController controller=new AdminDataController();
int a=controller.addMedicine(med);
String msg="data not saved";
if(a==1)
{
	msg="data saved successfully";
}
%>
<%= msg %>
</body>
</html>
<%@ include file="a6.jsp" %>