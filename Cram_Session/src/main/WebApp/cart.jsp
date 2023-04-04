<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cram Session</title>
 <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
        
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="landingPagestyle.css" rel="stylesheet" />
        
        <!-- font awesome -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
           <link rel = "icon" href ="./assets/img/Cram Session logo.png" />
        
</head>
<body>
<!-- Navigation-->
        <nav class="navbar navbar-expand-md fixed-top bg-light" >
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="landingPage.jsp"><img src="./assets/img/Cram Session logo.png" height="40px">Cram Session</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active nav-item "><a class="nav-link" href="${pageContext.request.contextPath}/Home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="aboutUs.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="contactUs.jsp">Contact Us</a></li>
                </ul>
                
                <ul class="nav navbar-nav mx-5">
                   
                    <div class="dropdown">
                        <button class="dropbtn bi bi-person-circle">&nbsp; </button>
                        <div class="dropdown-content">
                            <form action="${pageContext.request.contextPath}/profile" method="get">
                            <li class="nav-item">
                           &nbsp; <span class=" fa fa-book"></span>&nbsp;<input type="submit" value="Profile" style="border: none" class=" bg-white"/>                                 
                            </li> 
                            </form>
                            <li class="nav-item"><a class="nav-link" href="cart.jsp">
                                <span class="bi bi-cart4"></span>&nbsp;Cart</a>
                            </li> 
                          
                          
                            <li class="nav-item"><a class="nav-link" href="loginPage.jsp">
                                <span class="fa fa-sign-out"></span> Log Out</a>
                            </li>
                          
                        </div>
                      </div>                 
					                   
					     </ul>           
                
            </div> 
        </nav>
       <br> <br> <br>
  <!-- Cart Start -->

    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-light table-borderless table-hover text-center mb-0">
                    <thead class="thead-dark">
                        <tr>
                            <th>Products</th>
                            <th>Price</th>
                          
                            <th>Total</th>
                            <th>Remove</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                        <tr>
                            <td class="align-middle"><img src="./assets/img/pdf_thumbnail.png" alt="" style="width: 50px;"> Product Name</td>
                            <td class="align-middle">₹150</td>
                           
                            <td class="align-middle">₹150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-danger"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="./assets/img/pdf_thumbnail.png" alt="" style="width: 50px;"> Product Name</td>
                            <td class="align-middle">₹150</td>
                           
                            <td class="align-middle">₹150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-danger"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="./assets/img/pdf_thumbnail.png" alt="" style="width: 50px;"> Product Name</td>
                            <td class="align-middle">₹150</td>
                            
                            <td class="align-middle">₹150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-danger"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="./assets/img/pdf_thumbnail.png" alt="" style="width: 50px;"> Product Name</td>
                            <td class="align-middle">₹150</td>
                           
                            <td class="align-middle">₹150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-danger"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="./assets/img/pdf_thumbnail.png" alt="" style="width: 50px;"> Product Name</td>
                            <td class="align-middle">₹150</td>
                           
                            <td class="align-middle">₹150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-danger"><i class="fa fa-times"></i></button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-4">
                <form class="mb-30" action="">
                    <div class="input-group">
                        <input type="text" class="form-control border-0 p-4" placeholder="Coupon Code">
                        <div class="input-group-append">
                            <button class="btn btn-primary">Apply Coupon</button>
                        </div>
                    </div>
                </form>
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Cart Summary</span></h5>
                <div class="bg-light p-30 mb-5">
                    <div class="border-bottom pb-2">
                        <div class="d-flex justify-content-between mb-3">
                            <h6>Subtotal</h6>
                            <h6>₹150</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">₹10</h6>
                        </div>
                    </div>
                    <div class="pt-2">
                        <div class="d-flex justify-content-between mt-2">
                            <h5>Total</h5>
                            <h5>₹160</h5>
                        </div>
                        <button class="btn btn-block btn-primary font-weight-bold my-3 py-3">Proceed To Checkout</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart End -->
 
 
 
 
 
 <!-- Footer-->
        <footer class="footer bg-light  py-3" style="position: fixed; bottom: 0; width: 100%;">
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
