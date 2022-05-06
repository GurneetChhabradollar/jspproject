<%@ include file="a7.jsp" %>
<style>
.a1
{
	background:;
	background-size: cover;
}
.grid-container {	
  display: grid;
  grid-template-columns: auto auto auto;
  margin-left:150px;
  background: white;
  row-gap:50px;
}
.grid-item {
  width: 250px;
  height: 200px;
  padding:0px;
  text-align: center;
  font-size:20px;
}
.grid-item:hover {
  opacity: 0.5;
}
.image
{
	width:250px;
	height:200px;
}
</style>

<%
	//check the session of user
	try
	{
		session=request.getSession(false);
		String ut=session.getAttribute("usertype").toString();
		if(ut.equalsIgnoreCase("admin")==false)
		{
			response.sendRedirect("AuthError.jsp");
		}
	}
	catch(NullPointerException e)
	{
		response.sendRedirect("AuthError.jsp");
	}
%>

</head>

<body class="a1">
<h1 style="text-align:center;">Administrator Block</h1>
<div class="grid-container">
  <div class="grid-item"><a href="Profile.jsp" style="text-decoration:none;"><img class="image" src="admin.jfif"/>Profile</a></div>
  <div class="grid-item"><a href="ShowMedicine.jsp" style="text-decoration:none;"><img class="image" src="admin.jfif"/>MedicineList</a></div>
  <div class="grid-item"><a href="AddMedicine.jsp" style="text-decoration:none;"><img class="image" src="admin.jfif"/>Add Medicine</a></div>  
  <div class="grid-item"><a href="DeleteMedicine.jsp" style="text-decoration:none;"><img class="image" src="admin.jfif"/>Delete Medicine</a></div>
  <div class="grid-item"><a href="ShowMedicine.jsp" style="text-decoration:none;"><img class="image" src="admin.jfif"/>Edit Medicine</a></div>
  <div class="grid-item"><a href="CheckSales.jsp" style="text-decoration:none;"><img class="image" src="admin.jfif"/>Check Sales</a></div>    
</div>
<%@ include file="a8.jsp"%>