<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cram Session</title>
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
        <!-- Navigation-->
        <nav class="navbar navbar-expand-md fixed-top bg-light" >
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="landingPage.jsp"><img src="./assets/img/Cram Session logo.png" height="40px">Cram Session</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active nav-item "><a class="nav-link" href="landingPage.jsp">Home</a></li>
                     <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/Notes">Notes</a></li>
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
      <br> <br> <br>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container position-relative">
                <div class="row justify-content-center">
                    <div class="col-xl-6">
                        <div class="text-center text-white">
                            <!-- Page heading-->
                            <h1>Cram Session</h1><h1>Notes Sharing Community</h1>
                            
                               
                               <!-- Search-->
                                  <form action="${pageContext.request.contextPath}/beforesearch" method="GET">
                                <div class="input-group rounded-pill">
                                  <input type="text" class="form-control rounded-pill" placeholder="Search..."  id="fileName" name="file_name">
                                    <div class="input-group-append">
                                      <button type="submit" class="btn btn-primary rounded-pill" type="button">
                                        <i class="fa fa-search"></i>
                                      </button>
                                    </div>
                                   
                               </div>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Icons Grid-->
        <section class="features-icons bg-light text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><i class="bi-window m-auto text-primary"></i></div>
                            <h3>Use It Everywhere</h3>
                            <p class="lead mb-0">Notes stay updated across all your devices, automatically and in real time.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><i class="bi-layers m-auto text-primary"></i></div>
                            <h3>Study Together</h3>
                            <p class="lead mb-0">Share a to-do list, post some instructions, or publish your notes online</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><i class="bi-terminal m-auto text-primary"></i></div>
                            <h3>Easy to Use</h3>
                            <p class="lead mb-0">Notes are backed up with every change, so you can see what you noted last week or last month!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Image Showcases-->
        <section class="showcase">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('assets/img/note-taking.png')"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        
                        <p class="lead mb-0">Welcome to our notes sharing platform, where ease of use is at the forefront of everything we do. Our website has been designed to make it simple and straightforward for you to share and access notes from students all around the world</p>
                    </div>
                </div>
                <div class="row g-0">
                    <div class="col-lg-6 text-white showcase-img" style="background-image: url('assets/img/file-upload-site-3.jpg')"></div>
                    <div class="col-lg-6 my-auto showcase-text">
    
                        <p class="lead mb-0">We understand the importance of organization and structure when it comes to studying, which is why we've made it easy to create and organize your own notes within our platform. Whether you're a student looking for notes to supplement your own learning, or you're looking to share your own notes with others, our website makes it easy to accomplish your goals.</p>
                    </div>
                </div>
                <div class="row g-0">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('assets/img/bg-showcase-3.jpg')"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        
                        <p class="lead mb-0">With a clean and intuitive user interface, you can quickly and easily search for the notes you need by subject, topic, or even specific keywords. Uploading your own notes is just as easy, with a streamlined process that allows you to share your knowledge with others in just a few clicks.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonials-->
        <section class="testimonials text-center bg-light">
            <div class="container">
                <h2 class="mb-5">What people are saying...</h2>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="assets/img/testimonials-1.jpg" alt="..." />
                            <h5>Sajid Khan</h5>
                            <p class="font-weight-light mb-0">"This is fantastic! Thanks so much guys!"</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="assets/img/testimonials-2.jpg" alt="..." />
                            <h5>Hriday Verma</h5>
                            <p class="font-weight-light mb-0">" I highly recommend Cram Session for its user-friendly interface ."</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="assets/img/testimonials-3.jpg" alt="..." />
                            <h5>Gowtham Budati</h5>
                            <p class="font-weight-light mb-0">"Thanks so much for making these resources available to us!"</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       
      <!-- Footer-->
        <footer class="footer bg-light  py-3" style=" width: 100%;">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 text-center text-lg-start my-auto">
        <ul class="list-inline mb-2">
          <li class="list-inline-item"><a href="/aboutUs.jsp" class="text-decoration-none text-dark">About</a></li>
             <li class="list-inline-item mx-2">·</li>
          <li class="list-inline-item"><a href="/contactUs.jsp" class="text-decoration-none text-dark">Contact</a></li>
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
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
