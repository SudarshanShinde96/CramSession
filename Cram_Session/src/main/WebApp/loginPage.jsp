<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="LoginStyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Login Form</title>
	
	    <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
        
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="landingPagestyle.css" rel="stylesheet" />
        
        <!-- font awesome -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
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
                    <span class="fa fa-user"></span> Join Us</a>
                    </li>
                    
                </ul>
            </div> 
        </nav>
        


	<div class="container " id="container">	
	
		<div class="form-container log-in-container">
			<form action="login" method="post">
				<h1 class="title">Login</h1>
				<div class="social-container">
				</div>
			
				<input type="text" name="username" placeholder="Username"  required/>
				<input type="password" name="password" placeholder="Password"   required/>
				
					
				<input type="submit" value="Log In">
				
				<span><a href="registrationPage.jsp">Don't Have Account</a></span>
				<% if(request.getAttribute("errors") != null) { %>
  <script type="text/javascript">
    alert("${errors.loginError}");
  </script>
<% } %>
	
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
			  <img alt="" src="CramSession.gif" width="250" height="250">
			  
				</div>
			</div>
		</div>
	</div>
</body>
</html>