<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Login</title>
    <link href="heroes.css" rel="stylesheet">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/heroes/">
    <link href="/files/assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
<%@include
file = "style.css" 
%>

<%-- <%@include
file = "css/all.min.css" 
%> --%>
body
{
backgaround-size:cover;
overflow: hidden;
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
                           <a class="nav-link active" aria-current="page" href="/ind">Home</a>
                         </li>
                         <li class="nav-item active">
                             <a class="nav-link active" aria-current="page" href="about">About Us</a>
                         </li>
                         
                         <li class="nav-item active">
                             <a class="nav-link active" aria-current="page" href="contact">Contact Us</a>
                         </li>
                       </ul>
                   </div>
                 
               </nav> <br><br><br>
         </div>
        </div>
     </header>
   
    <div class="container col-xl-10 col-xxl-8 px-4 py-5">
        <div class="row align-items-center g-lg-5 py-5">
          <div class="col-lg-7 text-center text-lg-start">
            <h1 class="display-4 fw-bold lh-1 mb-3">Patient Health Monitoring Portal</h1>
            <p class="col-lg-10 fs-4">Provide information correctly. Follow the instruction properly given by the physician. Sign in track your health conditions regularly.</p>
          </div>
          <div class="col-md-10 mx-auto col-lg-5">
         
          <h4>${errmsg }</h4> 
          
            <form class="p-4 p-md-5 border rounded-3 bg-light" action="checkp" method="post">
              <div class="form-floating mb-3">
             
                <input type="text" class="form-control" id="floatingInput" placeholder="User Id" name="userId">
                <label for="floatingInput">User Id</label>
              </div>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" id="floatingPassword" name="Password" placeholder="Password">
                <label for="floatingPassword">Password</label>
              </div>
              <div class="form-floating mb-3">
                
                  <a href="forgetpassword1">Forget Password</a>
               
              </div>
              
              <div class="checkbox mb-3">
                <label>
                  <input type="checkbox" value="remember-me"> Remember me
                </label>
              </div>
              <button class="w-100 btn btn-lg btn-primary"  type="submit">Sign in</button>
              <hr class="my-4">
              <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
              <p>New User? <a href="dipreg">click me</a> </p>
            </form>
            <div class="png-pathealth">
             <img alt="Docter" width="180px" height="450px" src="/files/png-pathealth.png">
             </div>
             
          </div>
        </div>
      </div>
</body>
</html>