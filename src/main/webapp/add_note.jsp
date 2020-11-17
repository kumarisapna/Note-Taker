<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="base.jsp" %>
<link href="css/style.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Notes</title>
</head>
<body>
<div class="container mt-2">
<%@include file="navbar.jsp" %>
<br>
<h1>Please fill your Note Details</h1> 
<br>

<!--this is add  form -->
<form action ="SaveNoteServlet" method="post">

  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text"
     name="title"
    class="form-control"
     id="title"
      aria-describedby="emailHelp"
       style="width:500px;"
       placeholder="Enter Here"required>
    </div>
    
  
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea id="content"
    name="content"
     placeholder="Enter your Content"
     class="form-control"
     style="height: 200px;width:400px;"required>
     </textarea>
  </div>
  <br>
  
 <div class="container ">
  <button type="submit" class="btn btn-primary" style="width:90px;">Add</button>
  </div>
</form>
</div>
</body>
</html>