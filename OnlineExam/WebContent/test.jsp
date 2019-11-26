<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Start Exam</title>
  <link rel="stylesheet" type="text/css" href="gladiator.css">
  <!--  <script type="text/javascript" src="timer.js"></script>-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  
  
</head>

 <%!int qnno=1;%>
<body bgcolor="#f1f1f1" onload="countdown();">
  <div class="abc">
<img src="logo4.jpg">
  <a href="">Home</a>
  <a href="">About Us </a>
  <a href="">Contact Us</a>
   <a href="${contextPath}/logout.lti" style="float:right">Logout</a>
   <a href="" style="float:right">Hello, ${name}</a>
</div>

  <h2>${qn.examtype} test</h2>

 <form id="test" action="test.lti">
        <div id="mcq">
             <div id="review_box">
               <input id="minutes" type="text" style="width: 10px; border: none; font-size: 16px; font-weight: bold; color: black;"><font size="5"> : </font> 
 <input id="seconds" type="text" style="width: 20px; border: none; font-size: 16px; font-weight: bold; color: black;">
            </div>
            <br>
            <br><br>
            <p class="qtn_no">Question :  <%out.print(qnno+" / 10");%></p>
            <p class="qtn">${ qn.question }</p>
            <div class="options">

            <input type="radio" name="opt" id="ans" value="1" >${ qn.op1 }<br><br>
            <input type="radio" name="opt" id="ans" value="2" >${ qn.op2 }<br><br>
            <input type="radio" name="opt" id="ans" value="3">${ qn.op3 }<br><br>
            <input type="radio" name="opt" id="ans" value="4">${ qn.op4 }<br><br>
            
<!-- <input type="hidden" name="opt" value="0">   -->


            </div>
            <input type="submit" class="next_button" value="Next" name="butn" id="testbutton">
        </div>
            </div>
    </form>
<%qnno++; %>
</body>
<script>
  
  //set minutes 
  var mins = 2; 
  function selectedOption()
  {
/*       var option = document.getElementById("ans");
      var selectedOption = [];
      for (var i = 0; i < option.length; i++) {
          if (option[i].checked) {
              selectedOption.push(vehicleTypes[i].value);
          }
      } */
      
      // Set the value of selectedVehicles to comma separated 
      // String of the selected vehicle types
      
    //  var hiddenSelectedVehicles = document.getElementById("selectedVehicles");
   //   hiddenSelectedVehicles.value = selectedVehicleTypes.join(",");
      
      // jQuery
      /* $("#selectedVehicles").value(selectedVehicleTypes.join(",")); */
      
      // Submit the form using javascript
      var form = document.getElementById("test");
      form.submit();
      
      //jQuery
      /* $("#vehicles").submit(); */
  }
 
  //calculate the seconds 
  var secs = mins * 60; 

  //countdown function is evoked when page is loaded 
  function countdown() { 
      setTimeout('Decrement()', 60); 
  } 

  //Decrement function decrement the value. 
  function Decrement() { 
      if (document.getElementById) { 
          minutes = document.getElementById("minutes"); 
          seconds = document.getElementById("seconds"); 

          //if less than a minute remaining 
          //Display only seconds value. 
          if (seconds < 59) { 
              seconds.value = secs; 
          } 

          //Display both minutes and seconds 
          //getminutes and getseconds is used to 
          //get minutes and seconds 
          else { 
              minutes.value = getminutes(); 
              seconds.value = getseconds(); 
          } 
          //when less than a minute remaining 
          //colour of the minutes and seconds 
          //changes to red 
          if (mins < 1) { 
              minutes.style.color = "red"; 
              seconds.style.color = "red"; 
          } 
          //if seconds becomes zero, 
          //then page alert time up 
          if (mins < 0) { 
              minutes.value = 0; 
              seconds.value = 0; 
              selectedOption();
          } 
          //if seconds > 0 then seconds is decremented 
          else { 
              secs--; 
              setTimeout('Decrement()', 1000); 
          } 
      } 
  } 

  function getminutes() { 
      //minutes is seconds divided by 60, rounded down 
      mins = Math.floor(secs / 60); 
      return mins; 
  } 

  function getseconds() { 
      //take minutes remaining (as seconds) away  
      //from total seconds remaining 
      return secs - Math.round(mins * 60);
  	  	
  } 
  
  </script>
</html>