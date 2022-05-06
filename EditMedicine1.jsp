<%@page import="pojo.Medicine"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="program.AdminDataController" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String p,q;
p=request.getParameter("H1");
q=request.getParameter("T1");
Medicine med=new Medicine();
med.setPrice(Integer.parseInt(q));
AdminDataController controller=new AdminDataController();
int aa=controller.editMedicine(p,med);
String msg="data not updated";
if(aa==1)
{
	msg="data updated successfully";
}
%>
<%= msg %>
</body>
</html>