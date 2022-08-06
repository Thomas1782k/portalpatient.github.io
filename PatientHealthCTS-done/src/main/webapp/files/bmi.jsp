<%-- 
    Document   : index
    Created on : Jun 17, 2022, 5:16:53 AM
    Author     : Karth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>BMI</title>
    <style>
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
                           <a class="nav-link active" aria-current="page" href="/phome?pid=${pid }">Home</a>
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
        <img class="d-block mx-auto mb-4" src="/files/assets/brand/user-doctor-solid.svg" alt="" width="72" height="57">
        <h2>BMI Validation</h2>
        
      </div>
      <center>
      <b><h3 style="color:green;">${msg}</h3></b>
      <b><h3 style="color:red;">${errmsg}</h3></b>
      </center>
    <div class="container col-xl-10 col-xxl-12 px-4 py-5">
        
        <div class="row align-items-center g-lg-5 py-5">
          
          <div class="col-md-10 mx-auto col-lg-5">
            
            <form class="p-2 p-md-1 row g-3 border rounded-3 bg-light" action="bmiCalculate" method="post">
            <input type="hidden" name="pid" value=" ${pid}">
                <div class="form-floating mb-3">
              
               <h4><label >Patient ID: ${pid} </label></h4>
              </div>
                 
              <div class="form-floating mb-3">
                <input type="number" class="form-control" id="floatingInput3" placeholder="name@example.com" name="height">
                <label for="floatingInput3">Height</label>
              </div>
              <div class="form-floating mb-3">
                <input type="number" class="form-control" id="floatingInput4" placeholder="First Name" name="weight">
                <label for="floatingInput4">Weight</label>
              </div>
              
              <button class="w-100 btn btn-lg btn-primary" type="submit">Calculate</button>
              
             
            </form>
          </div>
        </div>
      </div>
      
  
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>