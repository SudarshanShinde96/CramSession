
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.cdac.cs.model.*" %>
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
          
   
</head>
<body class="bg-light">

<!-- Navigation-->
        <nav class="navbar navbar-expand-md fixed-top bg-light" >
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
                            <!-- <li class="nav-item"><a class="nav-link" href="userProfile.jsp">
                                <span class="fa fa-book"></span>&nbsp; Profile</a>
                            </li>  -->
                            
                          
                          
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
        <br> <br> <br>
		        
	<%   
		Users user = null;
		  HttpSession sessio = request.getSession(false);
		  if (sessio != null) {
		    user = (Users) sessio.getAttribute("registration");
		  }
		 
		%>
        
       
    
<div class="container">
  <div class="row">
    <div class="col-md-4">
      <div class="float-start">
     
 <div class="d-flex flex-column align-items-center">
 
 
 
		    <div class="col-md-4">
		      <div class="float-start">
		      
		        <form action="picupload"  method="POST" enctype="multipart/form-data">
		          <div class="d-flex flex-column align-items-center">
		            <label for="profilepic" style="cursor: pointer;">
		              <img src="./assets/img/126486.png" alt="User Image" id="imgPreview" class="rounded mx-auto d-block" height="130px" width="130px"> 
		              <input type="file" name="file" id="fileInput" accept="image/*" class="form-control" style="display:none" onchange="document.getElementById('imgPreview').src = window.URL.createObjectURL(this.files[0]);"> 
		               <br> <h4>${userinfo.fullname }</h4>  
		            </label>
		          <!--   <input type="submit" value="Upload D.P" class="btn btn-primary rounded-pill text-white mt-2">  -->
		          </div>
		        </form>
		        
		      </div>
		    </div>
 
          
          </div>
       
      </div>
    </div>
    <div class="col-md-4">
          <h1> ${userinfo.username }</h1>
        
      <p><b>Email:</b> ${userinfo.email }</p>
      <p><b>PhoneNumber:</b> ${userinfo.phonenumber }</p>
      <p><b>Member Since:</b> ${userinfo.join_date }</p>
    </div>
    <div class="col-md-4">
      <div class="float-end">
       <form method="POST" enctype="multipart/form-data" action="/upload" class="was-validated">
    <div class="form-group">
        <label for="file">Select a file to upload:</label>
    
        <input type="file" class="form-control-file" id="file" name="file" required>
        <div class="invalid-feedback">
				      Please Select a File .
				    </div>
    </div>
    <div class="form-group">
        <label for="desc">Description:</label>
        <input type="text" class="form-control" id="desc" name="desc" placeholder="Enter description" required>
   <div class="invalid-feedback">
				      Please enter File Description.
				    </div>
    </div>
    <div class="form-group">
        <label for="type">File Type:</label>
        <select class="form-control" id="type" name="type">
            
            <option value="application/pdf">PDF File</option>
            <option value="application/msword">Microsoft Word Document</option>
            <option value="application/vnd.ms-excel">Microsoft Excel Spreadsheet</option>
            <option value="application/octet-stream">Other File Type</option>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Upload</button>
</form>

      </div>
    </div>
 
    
  

     <div class="row mt-4">
     <h2>Uploaded Files</h2>
    <div class="d-flex flex-column align-items-center">
      <table class="table  table-hover table-responsive">
        <thead>
            <tr>
                <th>ID</th>
                 <th>  </th>
                <th>File Name</th>
                <th>Description</th>
                <th>Username</th>
                <th>Upload Date</th>
             
            </tr>
        </thead>
        <tbody>
            <%
            
    		Iterable<Uploads> uploads = (Iterable<Uploads>) request.getAttribute("uploads");
    	
    if (uploads != null) {
        for (Uploads upload : uploads) {
            // display upload data
       
    
%>
            <tr>
                <td><%= upload.getFile_id()%></td>
                 <td>
                <% 
                String fileType = upload.getFile_type();
                if (fileType.equals("image/jpeg") || fileType.equals("image/png") || fileType.equals("image/gif")) { %>
                    <img src="<%= upload.getFile_path() %>" alt="Thumbnail" width="50">
                <% } else if (fileType.equals("application/pdf")) { %>
                    <img src="./assets/img/pdf_thumbnail.png" alt="PDF Thumbnail" width="50">
                <% } else if (fileType.equals("application/msword") || fileType.equals("application/vnd.openxmlformats-officedocument.wordprocessingml.document")) { %>
                    <img src="./assets/img/doc_thumbnail.png" alt="DOC Thumbnail" width="50">
                <% } else if (fileType.equals("application/vnd.ms-excel") || fileType.equals("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")) { %>
                    <img src="./assets/img/xls_thumbnail.png" alt="XLS Thumbnail" width="50">
                <% } else { %>
                    <img src="./assets/img/generic_thumbnail.png" alt="Thumbnail" width="50">
                <% } %>
            </td>
                <td><%= upload.getFile_name()%></td>
                <td><%= upload.getFile_description()%></td>
                <td><%= upload.getUsername()%></td>
                <td><%= upload.getUpload_on()%></td>
                <td>    <a href="${pageContext.request.contextPath}/downloadFile/<%= upload.getFile_id()%>"><i class="bi bi-file-earmark-arrow-down"></i>Download</a></td>
            <td>    <a href="${pageContext.request.contextPath}/delete/<%= upload.getFile_id()%>"><i class="bi bi-file-earmark-arrow-down"></i>Delete</a></td>
            </tr>
            <% }} %>
        </tbody>
    </table>
           </div>  
    </div>
  </div>
</div>
	
	
	
	    	
 <!-- Footer-->
        <footer class="footer bg-light  py-3" style="position: ; bottom: 0; width: 100%;">
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