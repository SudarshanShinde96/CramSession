<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="aboutusstyle.css">
    <script src="/js/about.js"></script>
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
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/Home"><img src="./assets/img/Cram Session logo.png" height="40px">Cram Session</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active nav-item "><a class="nav-link" href="${pageContext.request.contextPath}/Home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="aboutAter.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="contactAfter.jsp">Contact Us</a></li>
                </ul>
                              
                <ul class="nav navbar-nav mx-5">
                   
                    <div class="dropdown">
                        <button class="dropbtn bi bi-person-circle">&nbsp; </button>
                        <div class="dropdown-content">
                        <form action="profile" method="get">
                            <li class="nav-item">
                           &nbsp; <span class=" fa fa-book"></span>&nbsp;<input type="submit" value="Profile" style="border: none" class=" bg-white"/>                                 
                            </li> 
                            </form>
                         
                          
                          

                            <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath() %>/destroy">
                                <span class="fa fa-sign-out"></span> Log Out</a>
                            </li>
                          
                        </div>
                      </div>                 
					                   
					     </ul>             
					<!-- HTML code -->
				<!-- 	<li class="nav-item">
					  <a class="nav-link btn btn-primary rounded-pill text-white" href="#" data-toggle="modal" data-target="#file-upload-modal">
					    <span class="fa fa-upload"></span>Upload
					  </a>
					</li>   -->                   
                    
                
            </div> 
        </nav>
        <br>
        
        
        
        
    <div class="responsive-container-block container">
        <p class="text-blk team-head-text">
          Our Dream Team
        </p>
        <div class="responsive-container-block">
          <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 card-container">
            <div class="card">
              <div class="team-image-wrapper">
                <img class="team-member-image" src="/assets/img/Rishi Kant.png">
              </div>
              <p class="text-blk name">
                Rishi Kant
              </p>
              <p class="text-blk position">
                CEO
              </p>
              <p class="text-blk feature-text">
               Team Lead
              </p>
              <div class="social-icons">
                <a href="https://www.twitter.com" target="_blank">
                  <img class="twitter-icon" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/Icon.svg">
                </a>
                <a href="https://www.facebook.com" target="_blank">
                  <img class="facebook-icon" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/Icon-1.svg">
                </a>
              </div>
            </div>
          </div>
          <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 card-container">
            <div class="card">
              <div class="team-image-wrapper">
                <img class="team-member-image" src="/assets/img/Ratish.png">
              </div>
              <p class="text-blk name">
                Ratish Sharma
              </p>
              <p class="text-blk position">
                CEO
              </p>
              <p class="text-blk feature-text">
               Front-End Developer
              </p>
              <div class="social-icons">
                <a href="https://www.twitter.com" target="_blank">
                  <img class="twitter-icon" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/Icon.svg">
                </a>
                <a href="https://www.facebook.com" target="_blank">
                  <img class="facebook-icon" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/Icon-1.svg">
                </a>
              </div>
            </div>
          </div>
          
     <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 card-container">
            <div class="card">
              <div class="team-image-wrapper">
                <img class="team-member-image" src="/assets/img/Shubham.jpg">
              </div>
              <p class="text-blk name">
               Shubham Ojha
              </p>
              <p class="text-blk position">
                CEO
              </p>
              <p class="text-blk feature-text">
               Back-End Developer
              </p>
              <div class="social-icons">
                <a href="https://www.twitter.com" target="_blank">
                  <img class="twitter-icon" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/Icon.svg">
                </a>
                <a href="https://www.facebook.com" target="_blank">
                  <img class="facebook-icon" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/Icon-1.svg">
                </a>
              </div>
            </div>
          </div>
          <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 card-container">
            <div class="card">
              <div class="team-image-wrapper">
                <img class="team-member-image" src="/assets/img/Shinde.webp">
              </div>
              <p class="text-blk name">
                Shinde Shudarshan
              </p>
              <p class="text-blk position">
                CEO
              </p>
              <p class="text-blk feature-text">
               Back-End Developer
              </p>
              <div class="social-icons">
                <a href="https://www.twitter.com" target="_blank">
                  <img class="twitter-icon" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/Icon.svg">
                </a>
                <a href="https://www.facebook.com" target="_blank">
                  <img class="facebook-icon" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/Icon-1.svg">
                </a>
              </div>
            </div>
          </div>
          
          
          
           <!-- Footer-->
        <footer class="footer bg-light  py-3" style="width: 100%;">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 text-center text-lg-start my-auto">
        <ul class="list-inline mb-2">
          <li class="list-inline-item"><a href="/aboutAter.jsp" class="text-decoration-none text-dark">About</a></li>
             <li class="list-inline-item mx-2">·</li>
          <li class="list-inline-item"><a href="/contactAfter.jsp" class="text-decoration-none text-dark">Contact</a></li>
        </ul>
        <p class="text-muted small mb-4 mb-lg-0">&copy; Cram Session 2022. All Rights Reserved.</p>
      </div>
      <div class="col-lg-6 text-center text-lg-end my-auto">
        <ul class="list-inline mb-0">
          <li class="list-inline-item me-4">
            <a href="#!" class="text-decoration-none"><i class="bi-facebook fs-3"></i></a>
          </li>
          <li class="list-inline-item me-4">
            <a href="#!" class="text-decoration-none"><i class="bi-twitter fs-3"></i></a>
          </li>
          <li class="list-inline-item">
            <a href="#!" class="text-decoration-none"><i class="bi-instagram fs-3"></i></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</footer>
 
</body>
</html>