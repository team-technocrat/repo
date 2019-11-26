<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="gladiator.css">
</head>
<body>
<div class="abc">
<img src="logo4.jpg">
  <a href="">Home</a>
  <a href="">About Us </a>
  <a href="">Contact Us</a>
   <a href="${contextPath}/logout.lti" style="float:right">Logout</a>
   <a href="" style="float:right">Hello, Admin</a>
   </div><br><br><br>
   <table class="table">
<form action="rmvqst.lti">
<tr><td><h3>Enter Question Id:</h3></td></tr><tr><td>
<input type = "text" name="rmvqst" id="id" class="textfields"></td></tr>
<tr><td>
<center><input type="submit" value="submit"></center></td></tr>
</form>
</table>
</body>
</html>