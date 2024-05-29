<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<%@include file="all_js_css.jsp"%>
<style>
    body {
        background-color: #f8f9fa;
    }
    .card {
        margin: 20px 0;
    }
    .card img {
        max-width: 70px;
    }
    .card-title {
        font-size: 1.5em;
        color: #333;
    }
    .card-text {
        color: #555;
    }
    .btn-custom {
        margin: 10px;
    }
    .container {
        margin-top: 20px;
    }
</style>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container">
	<h1 class="text-uppercase">All Notes</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query<Note> q = s.createQuery("from Note order by addedDate desc", Note.class);
				List<Note> list = q.list();
				 SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
				for (Note note : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top m-2" style="max-width:70px;" src="img/note.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle() %></h5>
						<p class="card-text"><%=note.getContent() %></p>
						<p><b><%=formatter.format(note.getAddedDate()) %></b></p>
						<div class="container text-center ">
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="EditServlet?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
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