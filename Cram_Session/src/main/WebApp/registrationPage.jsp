<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegistrationForm</title>

<link rel="stylesheet" href="RegistrationFormStyle.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>


    <nav class="navbar navbar-expand-md fixed-top bg-light">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="landingPage.jsp"><img src="./assets/img/Cram Session logo.png" height="40px">Cram Session</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active nav-item "><a class="nav-link" href="landingPage.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="aboutUs.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="contactUs.jsp">Contact Us</a></li>
                </ul>
                <ul class="nav navbar-nav float-right">
                    <li class="nav-item"><a class="nav-link" href="loginPage.jsp">
                        <span class="fa fa-sign-in"></span> Login</a>
                    </li>
                    <li class="nav-item"><a class="nav-link btn btn-primary rounded-pill text-white" href="registrationPage.jsp">
                    <span class="fa fa-user"></span> Join Us</a></button>
                    </li>
                    
                </ul>
            </div> 
        </nav>
        
        <br><br>
	

<section class=" gradient-custom">
  <div class="container py-5">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Registration Form</h3>
            <form action="register" method="post" class="was-validated">

              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="userName" name="username" class="form-control form-control-lg" placeholder="Enter User Name Here" required  minlength="5" maxlength="7"/>
                    <label class="form-label" for="userName">User Name</label>
                  </div>
				  <div class="invalid-feedback">
				      Please enter your user name  minlength="5" maxlength="7" .
				    </div>
                </div>
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="fullName" name="fullname" class="form-control form-control-lg" placeholder="Enter Full Name Here" required minlength="4"/>
                    <label class="form-label" for="fullName">Full Name</label>
                  </div>
                   <div class="invalid-feedback">
				      Please enter your Name.
				    </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                    <input
                      type="password"
                      class="form-control form-control-lg"
                      name="password"
                      id="password"
                      placeholder="Enter Password Here"
                      required  minlength="8" maxlength="15"
                    />
                    <label for="password" class="form-label">Password</label>
                  </div>
 <div class="invalid-feedback">
				      Please enter Password minlength="8" maxlength="15".
				    </div>
                </div>
                <div class="col-md-6 mb-4">

                  <h6 class="mb-2 pb-1">Gender: </h6>

                  <div class="form-check form-check-inline">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="gender"
                      id="Femalegender"
                      value="female"
                      checked
                    />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="gender"
                      id="Malegender"
                      value="male"
                    />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="gender"
                      id="Othergender"
                      value="other"
                    />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="email" id="email" name="email" class="form-control form-control-lg" placeholder="Enter Email Here" required/>
                    <label class="form-label" for="emailAddress">Email</label>
                  </div>
                    <div class="invalid-feedback">
				      Please enter your Email Address.
				    </div>
                </div>
                
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="tel" id="phoneNumber" name="phonenumber" class="form-control form-control-lg" placeholder="Enter Phone Number Here" required minlength="10" maxlength="10"/>
                    <label class="form-label" for="phoneNumber">Phone Number</label>
                  </div>
						<div class="invalid-feedback">
				      Please enter your Phone Number.
				    </div>
                </div>
              </div>

           <div class="row">
              <div class=" col-md-6 mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Submit" />               
              </div>
              
                 <div class=" col-md-6 mt-4 pt-2">
                <a href="loginPage.jsp" >Already Have Account?</a>               
              </div>
			   </div>    
			          		<% if(request.getAttribute("errors") != null) { %>
                   <script type="text/javascript">
                    alert("${errors.registerError}");
                       </script>
<% } %>    
            </form>
          </div>
        </div>
      </div>
    </div>
    <br>
    <br>
     <p align="center" class="text-white"> All trademarks are properties of their respective owners. 
       2008-2023 &copy Cram Session Ltd. All rights reserved</p>
  </div>
</section>
     
</body>
</html>