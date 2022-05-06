<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="pojo.Chemist" %>
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
String p,q;
p=request.getParameter("T1");
q=request.getParameter("T2");
AdminDataController controller=new AdminDataController();
Logindata lgn=controller.fetchOne(p);
String ut=lgn.getUsertype();
session=request.getSession();
session.setAttribute("userid",p);
session.setAttribute("usertype",ut);
if(ut.equalsIgnoreCase("customer"))
{
	response.sendRedirect("CustomerHome.jsp");
}
else
{
	response.sendRedirect("AuthError.jsp");
}
%>
</body>
</html>