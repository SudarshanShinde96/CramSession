<%@page import="com.cdac.cs.model.Uploads"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
        <header class="masthead" >
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
              <h1>List of Uploaded Files</h1>
<%
Iterable<Uploads> uploadsList = (Iterable) request.getAttribute("list");
if (uploadsList != null) {
%>
<div class="row justify-content-center">
<%
for (Uploads upload : uploadsList) {
%>
      <div class="col-lg-3 col-md-4 col-sm-6 pb-1 mr-3">
        <div class="product-item bg-light mb-4">
            <div class="product-img position-relative overflow-hidden">
                <% 
                String fileType = upload.getFile_type();
                if (fileType.equals("image/jpeg") || fileType.equals("image/png") || fileType.equals("image/gif")) { %>
                    <img src="<%= upload.getFile_path() %>"  class="img-fluid w-70 mx-auto d-block rounded" alt="Thumbnail" width="200">
                <% } else if (fileType.equals("application/pdf")) { %>
                    <img src="./assets/img/pdf_thumbnail.png"  class="img-fluid w-70 mx-auto d-block rounded" alt="PDF Thumbnail" width="200">
                <% } else if (fileType.equals("application/msword") || fileType.equals("application/vnd.openxmlformats-officedocument.wordprocessingml.document")) { %>
                    <img src="./assets/img/doc_thumbnail.png"  class="img-fluid w-70 mx-auto d-block rounded" alt="DOC Thumbnail" width="200">
                <% } else if (fileType.equals("application/vnd.ms-excel") || fileType.equals("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")) { %>
                    <img src="./assets/img/xls_thumbnail.png"   class="img-fluid w-70 mx-auto d-block rounded" alt="XLS Thumbnail" width="200">
                <% } else { %>
                    <img src="./assets/img/generic_thumbnail.png"  class="img-fluid w-70 mx-auto d-block rounded" alt="Thumbnail" width="200">
                <% } %>
                
            </div>
            <div class="text-center py-4">
                <a class="h6 text-decoration-none text-truncate" href="">File:<%= upload.getFile_name()%></a>
                <div class="d-flex align-items-center justify-content-center mt-2">
                    <h4>Description: <%= upload.getFile_description()%> </h4>
                 </div>
                <div class="d-flex align-items-center justify-content-center mt-2">
                    <h5>Uploader: <%= upload.getUsername()%></h5>
                </div>
                <div class="d-flex align-items-center justify-content-center mt-2">
                    <h5>Date & Time:   <%= upload.getUpload_on()%></h5>
                </div>
                
                
                  <div class="d-flex align-items-center justify-content-center mt-2">
                    <td>    <a href="loginPage.jsp"><i class="bi bi-file-earmark-arrow-down"></i>Download</a></td>
                
                  </div>
                
                
            </div>
        </div>
    </div>
<%
}
%>
</div>
<%
}
%>


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

</body>
</html>