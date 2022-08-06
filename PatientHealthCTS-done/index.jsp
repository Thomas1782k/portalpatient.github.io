<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<form method="post" action="select">
		<select class="form-select form-select-sm"
			aria-label=".form-select-sm example" name="role">
			<option selected>Select Roles</option>
			<option value="Patient">Patient</option>
			<option value="Doctor">Doctor</option>
			<option value="Admin">Admin</option>
		</select> <input type="submit" value="Login" name="opt">
		&nbsp;&nbsp;&nbsp; <input type="submit" value="Register" name="opt">
	</form>
</center>	
</body>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</html>