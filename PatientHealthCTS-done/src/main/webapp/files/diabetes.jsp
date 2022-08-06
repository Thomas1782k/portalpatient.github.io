

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diabetes</title>
        <style type="text/css">
<%@include
file = "style.css" 
%>

<%-- <%@include
file = "css/all.min.css" 
%> --%>
body
{
background-size: auto;
}
</style>
    </head>
    <body>
    <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
       response.setHeader("Pragma","no-cache");
       response.setHeader("Expires","0"); 
    %>
    
    
   <%--  <%
		String p = (String) request.getSession(false).getAttribute("1");
		ResultSet resultSet = null;
		ResultSet resultSet1 = null;
		ResultSet resultSet2 = null;
		int q = 0, age = 0;
		String name = "", gender = "";
		double bmi = 0.0, glucose = 0.0;
		int scoreage = 0, scorebmi = 0, scoregender = 0, scoreglucose = 0;
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/portaldb?", "root", "Naveenkumar@19");
			PreparedStatement sta = con
					.prepareStatement("select pid, first_name,age,gender from patient where pid = 1");
			sta.setString(1, p);
			resultSet = sta.executeQuery();
			while (resultSet.next()) {
				q = resultSet.getInt("pid");
				name = resultSet.getString("first_name");
				age = resultSet.getInt("age");
				gender = resultSet.getString("gender");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost/portaldb?", "root", "Naveenkumar@19");
			PreparedStatement sta1 = con2.prepareStatement("select bmi from patient_record where pid = 1");
			sta1.setInt(1, q);
			resultSet1 = sta1.executeQuery();
			while (resultSet1.next()) {
				bmi = resultSet1.getDouble("bmi");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost/portaldb?", "root", "Naveenkumar@19");
			PreparedStatement sta2 = con3.prepareStatement(
					"select blood_glucose from patient_record where pid=" + q);

			resultSet2 = sta2.executeQuery();
			while (resultSet2.next()) {
				glucose = resultSet2.getDouble("blood_glucose");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (age < 40)
			scoreage = 0;
		else if (age >= 40 && age < 50)
			scoreage = 1;
		else if (age >= 50 && age < 60)
			scoreage = 2;
		else if (age >= 60)
			scoreage = 3;
		else {
		}

		if (gender.equals("Male"))
			scoregender = 1;
		else if (gender.equals("Female"))
			scoregender = 0;
		else {
		}

		if (bmi < 30)
			scorebmi = 0;
		else if (bmi >= 30 && bmi < 40)
			scorebmi = 1;
		else if (bmi >= 40 && bmi < 45)
			scorebmi = 2;
		else if (bmi >= 45)
			scorebmi = 3;
		else {
		}

		if (glucose < 110)
			scoreglucose = 0;
		if (glucose >= 110 && glucose < 140)
			scoreglucose = 1;
		if (glucose >= 140 && glucose < 200)
			scoreglucose = 2;
		if (glucose >= 200)
			scoreglucose = 3;
		else {
		}
		int score = scorebmi + scoregender + scoreage + scoreglucose;
		System.out.print(p + q + name + age + gender + bmi +" "+ glucose + " " + score);
	%>
	<div class="container">
		<header> <big>PATIENT MONOTRING PORTAL</big> </header>
		<br> <br> <br> <br> <br>
		<nav><p align="right"><a href="Login.jsp">Logout</a></p></nav>
		
		<h3>YOU ARE AT</h3>
		<%
			if (score <= 4) {
		%>
		<font size="8">&nbsp;&nbsp;LOW RISK</font><h3>
			Score :
			<%
			out.print(score);
		%>/10
		</h3>
		Right now, your risk for having type 2 diabetes is low. However, your
		risk changes over time. Be sure to schedule regular check-ups with
		your doctor and take healthy steps toward preventing or delaying
		diabetes.
		 An estimated 7.2 million people with diabetes are
		undiagnosed, and 1 in 3 American adults is at risk for developing type
		2 diabetes. Do you think people you care about may be among them? Help
		them learn their risk by sharing the Type 2 Diabetes Risk Test.
		<%
			} else {
		%>
		<font size="8" color="red">&nbsp;&nbsp;HIGH RISK</font><h3>
			Score :
			<%
			out.print(score);
		%>/10
		</h3>
		Right now, your risk for having type 2 diabetes is High. Please Consult and take proper medication
		 An estimated 7.2 million people with diabetes are
		undiagnosed, and 1 in 3 American adults is at risk for developing type
		2 diabetes. Do you think people you care about may be among them? Help
		them learn their risk by sharing the Type 2 Diabetes Risk Test.
		<%
			}
		%>
		
		
		
		--%>
		
		
		
		<h1>internally calculated</h1>
		<a class="nav-link active" aria-current="page" href="/phome?pid=${pid }">Home</a>
		
</body> 
    
        
    
</html>
