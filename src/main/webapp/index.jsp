<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="all_js_css.jsp"%>
<title>Note Taker: Home Page</title>
<style>
body {
    display: flex;
    flex-direction: column;
    background-color: #f8f9fa;
}
.card {
	margin-top: 70px;
	padding: 40px;
	border-radius: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	background-color: #ffffff;
}

.card img {
	max-width: 150px;
}

.card h1 {
	margin-top: 20px;
	color: #007bff;
}

.btn-custom {
	margin-top: 20px;
}
.footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	color: white;
	padding: 10px 0;
}
</style>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>

	<div class="container d-flex justify-content-center">
		<div class="card text-center">
			<img src="img/note.png" class="img-fluid mx-auto" alt="Note">
			<h1 class="text-primary text-uppercase">Start Taking Your Notes</h1>
			<a href="add_notes.jsp" class="btn btn-primary btn-custom">Start
				Here</a>
		</div>
	</div>
	
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</body>
</html>
