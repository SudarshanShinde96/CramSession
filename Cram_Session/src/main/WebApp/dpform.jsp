<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
  String uploadPath = "uploads/"; // Set the upload directory
  String fileName = "";
  String errorMsg = "";
  
  // Check if the request contains a file to upload
  if (request.getPart("profilePic") != null) {
    Part filePart = request.getPart("profilePic");
    fileName = filePart.getSubmittedFileName();
    
    // Save the file to the upload directory
    try {
      filePart.write(uploadPath + fileName);
    } catch (Exception e) {
      errorMsg = "Failed to upload file";
    }
  } else {
    errorMsg = "No file selected";
  }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% if (errorMsg.isEmpty()) { %>
    <h1>Profile Picture Uploaded Successfully</h1>
    <img src="<%= uploadPath + fileName %>" alt="Profile Picture">
  <% } else { %>
    <h1><%= errorMsg %></h1>
  <% } %>
</body>
</html>