<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>Admin Home</title>
   <style type="text/css">
        /* Chrome, Safari, Edge, Opera */
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
          -webkit-appearance: none;
          margin: 0;
        }
        
        /* Firefox */
        input[type=number] {
          -moz-appearance: textfield;
        }
 <%@include
file = "style.css" 
%>

body
{
background-size: auto;
}
        </style>
</head>
<body>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
       response.setHeader("Pragma","no-cache");
       response.setHeader("Expires","0"); 
    %>
    <header>
       <div class="row">
        <div class="col">
            <nav class="navbar navbar-dark bg-primary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="/files/assets/brand/stethoscope-solid.svg" alt="" width="72" height="57" class="d-inline-block align-text-top">
                        
                      </a>
                      <ul class="nav justify-content-center">
                        <li class="nav-item">
                            <a style="color: white;  font-size: xx-large;" class="n-all nav-link active" aria-current="page">Patient Health Monitoring Portal</a>
                        </li>
                        </ul>
                      <ul class="nav nav-pills">
                        <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="/ind">Logout</a>
                        </li>
                        <!-- <li class="nav-item active">
                            <a class="nav-link active" aria-current="page" href="about">About Us</a>
                        </li>
                        
                        <li class="nav-item active">
                            <a class="nav-link active" aria-current="page" href="contact">Contact Us</a>
                        </li> -->
                      </ul>
                  </div>
                
              </nav> <br><br><br>
        </div>
       </div>
    </header>
    <div class="text-center">
        <img class="d-block mx-auto mb-4" src="/files/assets/brand/clipboard-user-solid.svg" alt="" width="72" height="57">
        <h2>Admin Appointment</h2>
        <h5>${msg }</h5>
        <h5>${msg1 }</h5>
      </div>
      
    <div class="container col-xl-10 col-xxl-12 px-4 py-5">
        
        <div class="row align-items-center g-lg-5 py-5">
          
          <div class="col-md-10 mx-auto col-lg-5">
            
            <form class="p-2 p-md-1 row g-3 border rounded-3 bg-light">
                <div class="form-floating mb-3">
                   <select name="pid" id="patientavailable" class="form-select">
                   <c:forEach items="${patients}" var="pat">
                   <option value="${pat.getPid()}">${pat.getPid()}</option>
                   </c:forEach>
                     </select>                    
                     <label for="floatingInput1">Patient ID</label>
                  </div>
              
               <div class="form-floating mb-3">
                <select name="pname" id="patientavailable" class="form-select">
                   <c:forEach items="${patients}" var="pat">
                   <option value="${pat.getFirstName() }">${pat.getFirstName() } - ${pat.getPid()} - ${pat.getDoctor()} </option>
                   </c:forEach>
                     </select> 
                <label for="floatingInput3">Patient Name</label>
              </div>
<div class="form-floating mb-3">
                <input type="datetime-local" name="appointmentDate" class="form-control" id="floatingInput" placeholder="First Name">
                <label for="floatingInput">Date</label>
                </div>
              <!-- 
<div class="form-floating mb-3">
                <input type="time" class="form-control" id="floatingInput" placeholder="First Name">
                <label for="floatingInput">Time</label>
              </div> -->
              <div class="form-floating mb-3">
                <input type="text" name="symptoms" class="form-control" id="floatingInput" placeholder="First Name">
                <label for="floatingInput">Symptoms</label>
              </div>
              <div class="form-floating mb-3">
                  <select name="doctor" id="Doctorsavailable" class="form-select">
                   <c:forEach items="${doctors}" var="doctor">
                   <option value="${doctor.getDid() }">${doctor.getFirstName()} - ${doctor.getSpeciality() }</option>
                   </c:forEach>
                     </select>
                <label for="floatingInput">Doctors Available</label>
              </div>    
   
             
              <button class="w-100 btn btn-lg btn-primary" formaction="appo" type="submit">Book Appointment</button>
              <hr class="my-4">
            </form>
          </div>
        </div>
      </div>
      
  
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>