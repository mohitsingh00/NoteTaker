<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Add Notes</title>
<style>
    body {
        background-color: #f8f9fa;
    }
    .form-container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
    }
    .form-container h1 {
        margin-bottom: 10px;
        color: #333;
    }
    .form-group label {
        font-weight: bold;
        color: #555;
    }
    .form-control {
        margin-bottom: 15px;
    }
    .btn-custom {
        margin-top: 20px;
        width: 100px;
    }
</style>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container form-container">
		<h1 class="text-center">Please fill your note details</h1>

		<!-- This is Form tag for adding notes -->
		<form action="savenote" method="post">
			<div class="form-group">
				<label for="title">Title</label> <input type="text"
					class="form-control" id="title" name="title"
					placeholder="Enter here" required>
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea class="form-control" id="content" name="content"
					style="height: 300px" placeholder="Enter your content here"
					required></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>

</body>
</html>