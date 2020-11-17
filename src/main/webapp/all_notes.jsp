<%@page import ="org.hibernate.Session" %>
<%@page import ="com.helper.FactoryProvider" %>
<%@page import ="java.util.List" %>
<%@page import ="org.hibernate.Query" %>
<%@page import ="com.entity.Note" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="base.jsp" %>
<link href="css/style.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All notes :Note Taker</title>
</head>
<body>
	<div class="container mt-2">
		<%@include file="navbar.jsp" %>
		<br>
		
		<h1 class="text-uppercase">All Notes :</h1>
		
	<div class="row">
	
	<div class="col-12">
	<%
	Session s= FactoryProvider.getFactory().openSession();
	Query q=s.createQuery("from Note");
	List<Note> list =q.list();
	for(Note note :list){
		
		%>
		
		<div class="card mt-3 container"style="width:570px;">
  <img class="card-img-top m-4 mx-auto" src="img/note.png" alt="Card image cap"style="max-width:60px;">
  <div class="card-body">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <p><b class="text-primary"><%=note.getAddedDate() %></b></p>
 	 <div class="container text-center">
    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
  
  </div>
  </div>
</div>
				
		<% 
		}
	s.close();
	
	%>
	
	</div>
	
	</div>
	
</div>

</body>
</html>