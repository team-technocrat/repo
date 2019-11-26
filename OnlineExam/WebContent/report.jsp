<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
<link rel="stylesheet" type="text/css" href="gladiator.css">
</head>
<body>
 <div class="abc">
<img src="logo4.jpg">
  <a href="">Home</a>
  <a href="">About Us </a>
  <a href="">Contact Us</a>
   <a href="${contextPath}/logout.lti" style="float:right">Logout</a>
   <a href="" style="float:right">Hello, ${student.name}</a>
</div>
<div class="space">
<h1> </h1>
</div>
<div class="report">
<h2>${display}</h2>

<a href="back.lti"><button class="button proceed"> Back to home</button></a> 
<br><br><br><br>

</div>
</body>
</html>