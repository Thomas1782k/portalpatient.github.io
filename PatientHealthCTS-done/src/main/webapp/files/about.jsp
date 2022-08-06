<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">
<%@include
file = "style.css" 
%>
body
{
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
                         <!-- <li class="nav-item active">
                             <a class="nav-link active" aria-current="page" href="about">About Us</a>
                         </li> -->
                         
                         <li class="nav-item active">
                             <a class="nav-link active" aria-current="page" href="/contact">Contact Us</a>
                         </li>
                       </ul>
                   </div>
                 
               </nav> <br><br><br>
         </div>
        </div>
        <div class="info">
 <center style="color: #0E185F">
 <fieldset>
 <legend> <h2 >About us:</h2> </legend> <br> <h4>  This website would help doctors and patient to view their health records and allows doctors to view their daily appointments and provide prescription to the patient. With this website admin can able to book appointments for the available doctors.
 </h4>
 </fieldset>
 </center> 
    </div>
     </header>
<main>

<section class="" id="testimonials">

    <div id="testimonial-carousel" class=" about carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active container-fluid">
          <div class="inside">
          <div class="inside-1">
          <h4 style="color: #0E185F" class="testimonial-text">We ensure our patients to set them free from their diseases/disorders through this platform.</h4>
          </div>
          <img width="70px" height="290px"  src="/files/png-ad.png" alt="Docter">
          </div>
        </div>
        <div class="carousel-item  container-fluid">
          <div class="inside">
          <div class="inside-1">
          <h4 style="color: #0E185F" class="testimonial-text">Through this website we fix the appointment and make the patients feel from travel stress. They can have their prescription from the doctor.</h4>
          </div>
          <img width="270px" height="290px"  src="/files/png-lap.png" alt="Docter">
          </div>
        </div>
        
        

        <button class="carousel-control-prev" type="button" data-bs-target="#testimonial-carousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#testimonial-carousel" data-bs-slide="next">
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>

</div>


  </section>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>