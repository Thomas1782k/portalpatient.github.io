<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>Home</title>
    <style type="text/css">
<%@include
file = "style.css" 
%>

<%-- <%@include
file = "css/all.min.css" 
%> --%>
</style>
</head>
<body>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
       response.setHeader("Pragma","no-cache");
       response.setHeader("Expires","0"); 
    %>
    
    <nav class=" navbar-dark bg-primary">
        <div  class=" navbar container-fluid">
            <a class="navbar-brand" href="#">
                <img src="/files/assets/brand/stethoscope-solid.svg" alt="" width="72" height="57"   class="d-inline-block align-text-top">
                
              </a>
              <ul class="nav justify-content-center">
                <li class="nav-item">
                   <h1> <a style="color: white;   font-size: xx-large;" class=" n-all nav-link active" aria-current="page"> Patient Health Monitoring Portal</a></h1>
                </li>
                </ul>
              <ul class="  nav nav-pills">
                <li class="nav-item active">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link active" aria-current="page" href="about">About Us</a>
                </li>
                
                <li class="nav-item active">
                    <a class="nav-link active" aria-current="page" href="contact">Contact Us</a>
                </li>
              </ul>
          </div>
        
      </nav>
      
      <div class="png-docn">
            <!--  <img alt="Docter" width="200px" height="120px" src="/files/png-d1.png"> -->
             <img alt="Docter" width="400px" height="420px" src="/files/png-docn.png">
             </div>
             <div class="png-pat">
            <!--  <img alt="Docter" width="200px" height="120px" src="/files/png-d2.png"> -->
             <img alt="Docter" width="400px" height="400px" src="/files/png-pat.png">
             </div>
              <form action="selection">
    <div class="w-50 card border-info mb-3 position-absolute top-50 start-50 translate-middle shadow mb-5 bg-body rounded" style="max-width: 32rem;">
        
        <div class="card-header placeholder col-12 bg-info"></div>
        <div class="card-body ">
          <h5 class="card-title text-center">Select User Role</h5><br><br>
          <div class="row justify-content-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <div class="col">
                <div class="form-check">
                
                    <input class="form-check-input" type="radio" name="flexRadioDefault" value="admin" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                      Admin
                    </label>
                    
                  </div>
                  </div>
                  <div class="col">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" value="docter" id="flexRadioDefault2">
                        <label class="form-check-label" for="flexRadioDefault2">
                          Doctor
                        </label>
                      </div>
                  </div>
                  <div class="col">
                    <div class="form-check">
                        <input class="form-check-input" type="radio"  name="flexRadioDefault" value="patient" id="flexRadioDefault3">
                        <label class="form-check-label" for="flexRadioDefault3">
                            Patient
                        </label>
                      </div>
                </div>
                <br><br><br>
              </div>
              <div class="row justify-content-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-6">
                    <div class="d-grid gap-4 d-md-block">
                    
                        <input class="w-100 btn btn-lg btn-primary" name="opt" value="Registration"  type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="w-100 btn btn-lg btn-primary" name="opt" value="Login"  type="submit">
                        
                      </div>
                     
                </div>
              </div>
            
          </div>
          <div class="card-header placeholder col-12 bg-info"></div>
 
        </div>
        </form>
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>