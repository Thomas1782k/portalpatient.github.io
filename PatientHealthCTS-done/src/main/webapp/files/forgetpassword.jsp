<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
overflow: auto;
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
          </div>
          <div class="col-md-10 mx-auto col-lg-5">
         
          <h4>${errormsg}</h4>
            <form action="forgotPass" class="p-4 p-md-5 border rounded-3 bg-light" method="post">
              <div class="form-floating mb-3">
                <input type="text" class="form-control" name="userId" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">User Id</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" name="ContactNumber" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">Contact Number</label>
              </div>
              <div class="form-floating mb-3">
                <input type="email" class="form-control" name="EmailAddress" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">Email Id</label>
              </div>
			  
              <button class="w-100 btn btn-lg btn-primary"  type="submit">Recover Password</button>
              
            </form>
            
          </div>
          
        </div>
      </div>
</body>
</html>