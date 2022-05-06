<%@ include file="a5.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="pojo.Medicine" %>
<%@ page import="program.AdminDataController"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
{
String p,q;
p=request.getParameter("T1");
q=request.getParameter("T2");
AdminDataController controller=new AdminDataController();
int a=controller.deleteMedicine(q);
String msg="data not deleted";
if(a==1)
{
	msg="data deleted successfully";
}
%>
<%= msg %>

<% 
}
catch(IllegalArgumentException e)
{
	out.println("database is empty");
}
%>
</body>
</html>
<%@ include file="a6.jsp"%>