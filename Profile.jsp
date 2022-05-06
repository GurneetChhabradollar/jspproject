<%@ include file="a5.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="pojo.Chemist" %>
<%@ page import="program.AdminDataController" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<script type="text/javascript" src="js/bootstrap.js"></script>

</head>
<body>
<% 
Chemist c1=new Chemist();
AdminDataController controller=new AdminDataController();
c1=controller.fetchChemist();
%>
<h3 bg-danger style="text-align: center;">Welcome <%= c1.getName() %></h3>
<p style="text-align: center;">Address:<%= c1.getAddress() %></p>
<p style="text-align: center;">Contact:<%= c1.getContact() %></p>
<p>A website administrator is charged with a wide range of administrative tasks, including designing, developing, maintaining, and troubleshooting websites. They are also responsible for creating and updating content, implementing security protocols, creating backups, sorting out software issues, and much more. A university bachelor's degree in computer science is needed to have a successful career.

Take a few minutes to create or upgrade your resume. Browse through our resume examples to identify the best way to word your resume. Then choose from 10+ resume templates to create your Web Administrator resume.
WEB ADMINISTRATOR RESPONSIBILITIES
Here are examples of responsibilities from real web administrator resumes representing typical tasks they are likely to perform in their roles.

Used DevOps techniques with Saltstack and Jenkins to automate site deployment, updates and upgrades.
Maintain internal tools for managing site structure, data, security, using CMS and Java.
Develop Perl and shell scripting to automate network device configuration, testing; automate UNIX host configurations.
Create and monitor multiple domains with multiple manage servers, machines, node manager and cluster environment.
Manage database of scientific publications.
Maintain and manage test and development environments utilizing internal VMWare infrastructure.
Extend the capabilities of the CMS using HTML, CSS and JavaScript, leading to more flexibility in design choices.
Design include information architecture, navigational rules, content development, and visual layout.
Create setup projects for windows applications and deploy the set files on designers machines.
Support and participate in the on call rotation for maintenance and troubleshooting of IIS websites and windows servers.
Debug multiple-join SQL statements utilize in Intranet employee look-up utility.
Design and maintain web pages & news for divisional intranet and SharePoint sites nationally and internationally.
Gather XML data and transfer content into system.
Research and add Youtube API layer to the website.
Work extensively with XML & EDI to integrate business process</p>
<p>WEB ADMINISTRATOR JOB DESCRIPTION
Between the years 2018 and 2028, Web Administrator jobs are expected to undergo a growth rate described as "as fast as average" at 5%, according to the Bureau of Labor Statistics. So if the thought "should I become a Web Administrator?" Has crossed your mind, maybe you should take the growth rate into account. In addition, the number of Web Administrator opportunities that are projected to become available by 2028 is 18,200.

Web Administrators average about $33.86 an hour, which makes the Web Administrator annual salary $70,433. Additionally, Web Administrators are known to earn anywhere from $51,000 to $96,000 a year. This means that the top-earning Web Administrators make $45,000 more than the lowest earning ones</p>
</body>
</html>
<%@ include file="a6.jsp" %>