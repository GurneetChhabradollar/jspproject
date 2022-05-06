<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="pojo.Chemist" %>
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

Chemist c1=new Chemist();
Logindata lgn=new Logindata();
c1.setName(p);
c1.setAddress(q);
c1.setContact(a);
c1.setEmail(s);
c1.setPassword(t);
lgn.setUserid(s);
lgn.setPassword(t);
lgn.setUsertype("admin");
AdminDataController controller=new AdminDataController();
int b=controller.addChemist(c1,lgn);
String msg="data not saved";
if(b==1)
{
	msg="data saves successfully";
}
%>
<%= msg %>
</body>
</html>