<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Record</title>
<style type="text/css">
<%@include
file = "style.css" 
%>

<%-- <%@include
file = "css/all.min.css" 
%> --%>
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
<center><h3>${msg }</h3></center>
<div class="pat-det"> 
<div >
	
	<form action="patient">
	<input type="hidden" name="pname" value="${pname }" />
	<input type="hidden" name="pid" value="${pid }" />
	<input type="hidden" name="doc" value="${doc }" />
	<input type="hidden" name="date" value="${date }" />
	<input type="hidden" name="symp" value="${dis }" />
	<input type="hidden" name="dname" value="${dname }" />
		<table >
			<thead>
				<tr>
					<th> <h3>Patient Details</h3> </th>
					<th></th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><h5>Patient ID: </h5></td>
					<td><h5>${pid } </h5></td>
					
				</tr>
				<tr>
					<td><h5>Name: </h5></td>
					<td><h5>${pname }  </h5></td>
					
				</tr>
				
				<tr>
					<td><h5>Diseases: </h5></td>
					<td><h5>${dis } </h5></td>
					
				</tr>
				<tr>
					<td><h5>BMI: </h5></td>
					<td><h5>${bmi } </h5></td>
					
				</tr>
				<tr>
					<td><h5>Activity: </h5></td>
					<td><h5>${activity } </h5></td>
					
				</tr>
				<tr>
					<td><h5>Glucose Level: </h5></td>
					<td><h5>${bloodg } </h5></td>
					
				</tr>
				
				<tr>
					<td><h5>Calories: </h5></td>
					<td><h5>${calories } </h5></td>
					
				</tr>
				<tr>
					<td><h5>Cholesterol: </h5></td>
					<td><h5>${ chol} </h5></td>
					
				</tr>
				<tr>
					<td><h5>Platelet Count: </h5></td>
					<td><h5>${palcount } </h5></td>
					
				</tr>
				<tr>
					<td><h5>Thyroid: </h5></td>
					<td><h5>${ thyroid} </h5></td>
					
				</tr>
				
				<tr>
					<td><h5>Prescription: </h5></td>
					<td><h5><textarea    name="prescription" >${pres }</textarea></h5> </td>					
				</tr>
				
				
				
			</tbody>			
		</table>
		<input class="sub" type="submit" value="Submit">
	</form>
	
	</div>
</div>
</body>
</html>