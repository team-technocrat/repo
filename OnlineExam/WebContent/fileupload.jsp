<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="gladiator.css">
</head>
<body  bgcolor="#f1f1f1">
<div class="abc">
<img src="logo4.jpg">
  <a href="">Home</a>
  <a href="">About Us </a>
  <a href="">Contact Us</a>
   <a href="${contextPath}/logout.lti" style="float:right">Logout</a>
   <a href="" style="float:right">Hello, ${student.name}</a>
</div><br><br><br>
<table class="table">
<form action="excel.lti" method="post">
<tr><th>Select Excel File</th></tr>
<tr><td>
<input type="file" id="myFile" size="50" name="myFile" class="addqtns">
</td></tr>
<tr><td>
<center><input type="submit" value="upload file" class="button"></center> 
 </td></tr>
</form>
 </table>
  
</body>
<script type="text/javascript">

    $(function()
    {
        $('#fileUpload').on('change',function ()
        {
            var filePath = $(this).val();
            console.log(filePath);
        });
        return filePath;
    });

</script> 
</html>