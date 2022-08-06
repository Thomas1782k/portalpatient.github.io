<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.98.0">
    <title>Patient Home</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">

    

    

<link href="/files/assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      <%@include
file = "style.css" 
%>

body
{
overflow: auto;
background-size: cover;
}
    </style>

    
    <!-- Custom styles for this template -->
    <!-- <link href="headers.css" rel="stylesheet"> -->
  </head>
  <body>
    <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
       response.setHeader("Pragma","no-cache");
       response.setHeader("Expires","0"); 
    %>
 <svg xmlns="http://www.w3.org/2000/svg" style="display: none;"> 
    
    
  <symbol id="bootstrap" viewBox="0 0 118 94">
    <title>Bootstrap</title>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
  </symbol>
 
    <symbol id="home" viewBox="0 0 16 16">
    <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
  </symbol>
  <symbol id="speedometer2" viewBox="0 0 16 16">
    <path d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z"/>
    <path fill-rule="evenodd" d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z"/>
  </symbol>
  <symbol id="table" viewBox="0 0 16 16">
    <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
  </symbol>
  <symbol id="people-circle" viewBox="0 0 16 16">
    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
  </symbol>
  <symbol id="grid" viewBox="0 0 16 16">
    <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
  </symbol>
  <symbol id="stethoscope" viewBox="0 0 576 512">
    <title>Stethoscope</title>
  <path d="M480 112c-44.18 0-80 35.82-80 80c0 32.84 19.81 60.98 48.11 73.31v78.7c0 57.25-50.25 104-112 104c-60 0-109.3-44.1-111.9-99.23C296.1 333.8 352 269.3 352 191.1V36.59c0-11.38-8.15-21.38-19.28-23.5L269.8 .4775c-13-2.625-25.54 5.766-28.16 18.77L238.4 34.99c-2.625 13 5.812 25.59 18.81 28.22l30.69 6.059L287.9 190.7c0 52.88-42.13 96.63-95.13 97.13c-53.38 .5-96.81-42.56-96.81-95.93L95.89 69.37l30.72-6.112c13-2.5 21.41-15.15 18.78-28.15L142.3 19.37c-2.5-13-15.15-21.41-28.15-18.78L51.28 12.99C40.15 15.24 32 25.09 32 36.59v155.4c0 77.25 55.11 142 128.1 156.8C162.7 439.3 240.6 512 336 512c97 0 176-75.37 176-168V265.3c28.23-12.36 48-40.46 48-73.25C560 147.8 524.2 112 480 112zM480 216c-13.25 0-24-10.75-24-24S466.7 168 480 168S504 178.7 504 192S493.3 216 480 216z"/></svg>
</symbol>
</svg>

  <header>
    <div class="px-3 py-2 bg-primary ">
      <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
          <a href="/" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
            <svg class="bi me-2" width="50" height="42" role="img" aria-label="Stethoscope"><use xlink:href="#stethoscope"/></svg>
          </a>
           <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a style="color: white;  font-size: xx-large;" class=" n-all nav-link active" aria-current="page"><span style="font-family: 'Ubuntu', sans-serif;"> Patient Health Monitoring Portal</span></a>
                </li>
                </ul>
            
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
           <!--  <li>
              <a href="/" class="nav-link text-white">
                <svg  class=" bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#home"/></svg>
                Home
              </a>
            </li> -->
            <li>
              <a href="#dash" class="nav-link text-white">
                <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#speedometer2"/></svg>
                Dashboard
              </a>
            </li>
            
            
            <li>
              <a href="/ind" class="nav-link text-white">
                <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#people-circle"/></svg>
                Logout
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
   
  </header>
<main>
    
    <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
         <!-- class="display-2 fw-normal" --> <h3 style="color:#000000">Welcome ${pname} </h3>
        <p class="fs-5 text-muted">Health is Wealth. Here you can check your health condition. Activities and prescriptions given to you are from most famous surgents. Kindly follow it.</p>
     <center >
    <div class="docup">
     <form action="docup">
     <input  type="hidden" name="pid" value="${pid }">
     <input  type="hidden" name="pname" value="${pname}">
		 <label > <strong style="color:#000000; "> Preferred Doctor:</strong></label>
     <select name="doctor" id="Doctorsavailable" class="form-select">
     <c:forEach items="${doctors}" var="doctor">
           <option value="${doctor.getFirstName()}">${doctor.getFirstName()} - ${doctor.getSpeciality() }</option>
      </c:forEach>
     </select>
     <input class="dsub" type="submit" value="Submit">
     </form>       
     </div>
   </center>
      </div>
<div id="dash">
      <div class="row row-cols-1 row-cols-md-3 mb-3 text-center justify-content-center">
        <div class="col">
          <div class="card mb-4 rounded-3 shadow-sm">
            <div class="card-header py-3">
            
              <h4 class="my-0 fw-normal">Calculate BMI </h4>
            </div>
            <div class="card-body">
              <h3 class="card-title pricing-card-title">Generate your BMI Report</h3>
              
               <form action="bmi">
               <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
            </div>
          </div>
        </div>
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
              <div class="card-header py-3">
                <h4 class="my-0 fw-normal">Blood Glucose Level</h4>
              </div>
              <div class="card-body">
                <h3 class="card-title pricing-card-title"> Blood Glucose Level Report</h3>
                
                 <form action="glucose">
                 <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
              <div class="card-header py-3">
                <h4 class="my-0 fw-normal">Blood Count</h4>
              </div>
              <div class="card-body">
                <h3 class="card-title pricing-card-title">Generate your Blood Count Report</h3>
                
                 <form action="bcount">
                 <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
              </div>
            </div>
          </div>
       
      </div>
      <div class="row row-cols-1 row-cols-md-3 mb-3 text-center justify-content-center">
        
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
              <div class="card-header py-3">
                <h4 class="my-0 fw-normal">Generate Diabetes Report</h4>
              </div>
              <div class="card-body">
                <h3 class="card-title pricing-card-title">Generate your Diabetes Report</h3>
                
                 <form action="diabetes">
                 <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
              </div>
            </div>
          </div>
     
     <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
              <div class="card-header py-3">
                <h4 class="my-0 fw-normal">Activity Tracker</h4>
              </div>
              <div class="card-body">
                <h3 class="card-title pricing-card-title">Track your activities</h3>
                
                 <form action="activity">
                 <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
              </div>
            </div>
          </div>
          
          <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
              <div class="card-header py-3">
                <h4 class="my-0 fw-normal">Cholesterol Monitoring</h4>
              </div>
              <div class="card-body">
                <h3 class="card-title pricing-card-title">Track your cholesterol level</h3>
                
                 <form action="fat">
                 <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
              </div>
            </div>
          </div>
          
       
      </div>
      
      <div class="row row-cols-1 row-cols-md-3 mb-3 text-center justify-content-center">
        
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
              <div class="card-header py-3">
                <h4 class="my-0 fw-normal">Calories Tracker</h4>
              </div>
              <div class="card-body">
                <h3 class="card-title pricing-card-title">Track your calories level</h3>
                
                 <form action="calories">
                 <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
              </div>
            </div>
          </div>
     
     <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
              <div class="card-header py-3">
                <h4 class="my-0 fw-normal">Diet Tracker</h4>
              </div>
              <div class="card-body">
                <h3 class="card-title pricing-card-title">Track your diet</h3>
                <form action="diettracker">
                <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
              </div>
            </div>
          </div>
          
             <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
              <div class="card-header py-3">
                <h4 class="my-0 fw-normal">Pressure Moniter</h4>
              </div>
              <div class="card-body">
                <h3 class="card-title pricing-card-title">Track your Pressure</h3>
                <form action="pressure">
                <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
              </div>
            </div>
          </div>
          
          
          
          <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
              <div class="card-header py-3">
                <h4 class="my-0 fw-normal">Thyroid Monitor</h4>
              </div>
              <div class="card-body">
                <h3 class="card-title pricing-card-title">Track your Thyroid</h3>
                <form action="thyroid">
                <input type="hidden" name="pid" value="${pid }">
                <button type="submit"  class="w-50 btn btn-lg btn-outline-primary">Generate</button>
                </form>
              </div>
            </div>
          </div>
 
      </div>
</div>
<div >
<center class="pre-hel"> <form action="seepre">
      <input type="hidden" name=pid value="${pid }">
     <h4> <input class="psub" type="submit"  value="View Prescription"></h4>
      </form> 
      <form action="seehel">
      <input type="hidden" name=pid value="${pid }">
     <h4> <input class="psub" type="submit"  value="View Health Condition"></h4>
      </form> 
      </center> 
      </div>
</main>
  

    <script src="/files/assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>
