<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment</title>
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

</head>
<body>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
       response.setHeader("Pragma","no-cache");
       response.setHeader("Expires","0"); 
    %>
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
                  <a class=" nav-link active" aria-current="page" href="/dhome?dname=${dname }">Home</a>
                </li>
              </ul>
          </div>
        
      </nav>
<div class="appointment">
	<h3>${pname } ${msg }</h3>
<table class="table table-hover">
 
  <thead>
  
    <tr>
      
      <th scope="col">Patient ID</th>
      <th scope="col">Patient Name</th>
      <th scope="col">Disease</th>
      <th scope="col">Date</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${docApp}" var="app">
 <tr>
 <td>${app.getPid() }</td>
 <td> <span class="${mega }">${app.getPname()}</span>  </td>
 <td>${app.getSymptoms() }</td>
 <td>${app.getDate() }</td>
 <td> 
	 <form action="pp">
	 <input type="hidden" name="pid" value="${app.getPid() }">
	 <input type="hidden" name="pname" value="${app.getPname() }">
	 <input type="hidden" name="symp" value="${app.getSymptoms() }">
	 <input type="hidden" name="date" value="${app.getDate() }">
	  <input type="hidden" name="doc" value="${app.getDoctor() }">
	  <input type="hidden" name="dname" value="${dname }">
	 <input class="sub" type="submit" value="Get Details" /> 
	  </form>
	 </td>
	
 
</tr>
 </c:forEach>
    
  </tbody>

</table>
</div>
</body>
</html>