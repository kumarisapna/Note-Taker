<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="org.hibernate.*,com.helper.*,com.entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="base.jsp" %>
<link href="css/style.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container ">
		<%@include file="navbar.jsp" %>
		<h1>this is edit page</h1>
		<br>
		
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		
			Note note = s.get(Note.class, noteId);
			
		%>
		
	<form action ="UpdateServlet" method="post">
	<input value="<%=note.getId()%>" name="noteId" type="hidden"/>

  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text"
     name="title"
    class="form-control"
     id="title"
     value="<%=note.getTitle() %>"
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
     style="height: 200px;width:400px;"required><%=note.getContent() %>
     </textarea>
  </div>
  <br>
  
 <div class="container ">
  <button type="submit" class="btn btn-success">Save your Note</button>
  </div>
</form>
</div>

</body>
</html>