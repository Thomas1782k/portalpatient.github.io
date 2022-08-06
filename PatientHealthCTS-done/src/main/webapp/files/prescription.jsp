<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prescription</title>
<style type="text/css">
<%@include
file = "style.css" 
%>

<%-- <%@include
file = "css/all.min.css" 
%> --%>

.mega
{
color:red;
}
body
{
background: linear-gradient(to left top,
    rgba(52, 179, 241,0.8),
    rgba(255, 240, 250,0.5)
    
    ); 
    min-height: 100vh;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather+Sans&family=Montserrat&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
</head>
<body>
 <nav class="navbar navbar-dark bg-primary">
        <div  class="  container-fluid">
            <a class="navbar-brand" href="#">
                <img src="/files/assets/brand/stethoscope-solid.svg" alt="" width="72" height="57"   class="d-inline-block align-text-top">
                
              </a>
              <ul class="nav justify-content-center">
                <li class="nav-item">
                   <h1> <a style="color: white;   font-size: xx-large;" class=" n-all nav-link active" aria-current="page"> Patient Health Monitoring Portal</a></h1>
                </li>
                </ul>
              <ul class="  nav nav-pills">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="/phome?pid=${id }">Home</a>
                </li>
                <!-- <li class="nav-item active">
                    <a class="nav-link active" aria-current="page" href="#">About Us</a>
                </li>
                
                <li class="nav-item active">
                    <a class="nav-link active" aria-current="page" href="#">Contact Us</a>
                </li> -->
              </ul>
          </div>
        
      </nav>
<div class="appointment">
	<h3 style="color: red;"> ${msg }</h3>
<table class="table table-hover">
 
  <thead>
  
    <tr>
      
      <th scope="col">Patient ID</th>
      <th scope="col">Patient Name</th>
      <th scope="col">Disease</th>
      <th scope="col">Date</th>
      <th scope="col">Prescription</th>
      <th scope="col">Doctor</th>
    </tr>
  </thead>
  <tbody>
  
 <tr>
 <td>${pid }</td>
 <td> ${pname} </td>
 <td>${symp }</td>
 <td>${date }</td>
 <td>${pres }</td>
 <td>${doc }</td>
 <%-- <td> 
	 <form action="upat">
	 <input type="hidden" name="pid" value="${app.getPid() }">
	 <input type="hidden" name="doc" value="${app.getDoctor() }">
	 <input type="hidden" name="pname" value="${app.getPname() }">
	 <input type="hidden" name="symp" value="${app.getSymptoms() }">
	 </form>
	 </td> --%>
 
</tr>

    
  </tbody>

</table>
</div>
</body>
</html>