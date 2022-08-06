<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>Doctor Registration</title>
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
background: linear-gradient(to left top,
    rgba(52, 179, 241,0.8),
    rgba(255, 240, 250,0.5)
    
    ); 
    min-height: 100vh;
    overflow: auto;
}
        </style>
</head>
<body >
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
    <div class="text-center">
        <img class="d-block mx-auto mb-4" src="/files/assets/brand/user-doctor-solid.svg" alt="" width="72" height="57">
        <h2>Doctor Registration</h2>
        <center><h3>${msg}</h3></center>
        <center><h3>${errmsg}</h3></center>
        
      </div>
      <div class="png-hseth">
             <img alt="Docter" width="350px" height="350px" src="/files/png-hseth.png">
             </div>
             <div class="png-seth">
             <img alt="Docter" width="300px" height="350px" src="/files/png-seth.png">
             </div>
    <div class="container col-xl-10 col-xxl-12 px-4 py-5">
        
        <div class="row align-items-center g-lg-5 py-5">
          
          <div class="col-md-10 mx-auto col-lg-5">
            
             <form class="p-2 p-md-1 row g-3 border rounded-3 bg-light">
                <div class="form-floating col-md-6">
                    <input type="text" class="form-control" id="floatingInput1" name="FirstName" placeholder="First Name"
							pattern="(?=.*[a-z])(?=.*[A-Z]).{1,20}"
							title="Must contain at least one uppercase and lowercase letter, and at least 2 characters" required>
                    <label for="floatingInput1">First Name</label>
                  </div>
                  <div class="form-floating col-md-6">
                    <input type="text" class="form-control" id="floatingInput2" name="LastName" placeholder="Last Name" >
                    <label for="floatingInput2">Last Name</label>
                  </div>
              <div class="form-floating mb-3">
                <input type="email" class="form-control" id="floatingInput3" name="EmailAddress" placeholder="name@example.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
							title="Must contain a character followed by digit,@,. and maximum of 15 length" required>
                <label for="floatingInput3">Email address</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput4" name="ContactNumber" placeholder="Contact Number" pattern="[0-9]*[.,]?[0-9]+" minlength="8" maxlength="10"
						title="Must contain ten digits" required>
                <label for="floatingInput4">Phone Number</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" name="Age" placeholder="Age" pattern="[-+]?[0-9]*[.,]?[0-9]+"
							minlength="1" maxlength="2"
							title="Must contain atleast one or two digits" required>
                <label for="floatingInput">Age</label>
              </div>
              <div class="form-floating mb-3">
                <select id="inputGender" name="Gender" class="form-select">
                    <option selected>Choose...</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="others">Others</option>
                  </select>
                <label for="floatingInput">Gender</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput3" name="Qualification" placeholder="M.B.B.S / M.D/ M.S or M.Sc in Medicine">
                <label for="floatingInput3">Qualification</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput3" name="Speciality" placeholder="Orthopedics/Pediatrics/General Surgery/Ophthalmology..">
                <label for="floatingInput3">Speciality</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput3" name="userId" placeholder="Orthopedics/Pediatrics/General Surgery/Ophthalmology.." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,15}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 5 length" required>
              <label for="floatingInput3">UserId</label>
              </div>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" id="floatingPassword" name="Password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 5 length" required>                
				<label for="floatingPassword">Password</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput3" name="address" placeholder="M.B.B.S / M.D/ M.S or M.Sc in Medicine">
                <label for="floatingInput3">Address</label>
              </div>
              
              <div class="form-floating col-md-4">
                <input type="text" class="form-control" id="floatingInput1" name="city" placeholder="First Name">
                <label for="floatingInput1">City</label>
              </div>
              <div class="form-floating col-md-4">
                <select id="inputState" name="state" class="form-select">
                    <option selected>Choose...</option>
                    <option>TamilNadu</option>
                    <option>Andhra Pradesh</option>
                    <option>Kerala</option>
                    <option>Karnataka</option>
                    <option>Odisha</option>
                    <option>Delhi</option>
                    <option>Maharashtra</option>
                    <option>Mumbai</option>
                    <option>Rajasthan</option>
                    <option>Gujarat</option>
                    <option>Pakisthan</option>
                    <option>Jammu & Kashmir</option>
                  </select>
                <label for="floatingInput2">State</label>
              </div>
               
              <div class="checkbox mb-3">
                <label>
                  <input type="checkbox" value="remember-me"> I Agree
                </label>
              </div>
			  
			  <button class="w-100 btn btn-lg btn-primary"  formaction="dreg" type="submit">Sign up</button>

              <hr class="my-4">
              <small class="text-muted text-center">By clicking Sign up, you agree to the terms of use.</small>
             
              </form>
            
          </div>
        </div>
      </div>
      
  
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>