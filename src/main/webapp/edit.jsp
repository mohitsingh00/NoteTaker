<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container">
		<h1>Edit Note</h1>
		<br>
		<%
		int id = Integer.parseInt(request.getParameter("note_id"));
		Session s = FactoryProvider.getFactory().openSession();
		Note note = s.get(Note.class, id);
		s.close();
		%>

		<!-- This is Form tag for adding notes -->
		<form action="UpdateServlet" method="post">
			<div class="form-group">
				<label for="title">Title</label> <input type="text"
					class="form-control" id="title" name="title"
					placeholder="Enter here" value="<%=note.getTitle()%>" required>
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea class="form-control" id="content" name="content"
					style="height: 300px" placeholder="Enter your content here"
					required><%=note.getContent()%></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save</button>
			</div>
		</form>
	</div>
</body>
</html>