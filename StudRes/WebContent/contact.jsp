<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.extras.JavaEmail"%>

<%
	String message = null;
	String status = null;
	if (request.getParameter("submit") != null) {
		JavaEmail javaEmail = new JavaEmail();
		javaEmail.setMailServerProperties();
		String emailSubject = "Contact Form using Java JSP GMail";
		String emailBody = "";
		if (request.getParameter("name") != null) {
			emailBody = "Sender Name: " + request.getParameter("name")
					+ "<br>";
		}
		if (request.getParameter("email") != null) {
			emailBody = emailBody + "Sender Email: "
					+ request.getParameter("email") + "<br>";
		}
		if (request.getParameter("phone") != null) {
			emailBody = emailBody + "Sender Phone: "
					+ request.getParameter("phone") + "<br>";
		}
		if (request.getParameter("message") != null) {
			emailBody = emailBody + "Message: " + request.getParameter("message")
					+ "<br>";
		}
		javaEmail.createEmailMessage(emailSubject, emailBody);
		try {
			javaEmail.sendEmail();
			status = "success";
			message = "Email sent Successfully!";
		} catch (Exception me) {
			status = "error";
			System.out.println(me);
			message = "Error in Sending Email!";
		}
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact Us</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet' href='style.css' type='text/css' media='all' />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
	<a class="navbar-brand" href="#"><img src="http://d2e9h3gjmozu47.cloudfront.net/brand.png" width="100" height="50" alt=""></a>
	 <a class="navbar-brand" href="homePage.jsp">Home</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
  	</button>
</nav>  
	<div id="central">
		<div class="content">
			<h1>Contact Form</h1>
			<p>Send your comments through this form and we will get back to
				you.</p>
			<div id="message">
<div class="container-fluid">  
    			<form id="frmContact" name="frmContact" action="" method="POST"
					novalidate="novalidate" style="border: 1px solid black;
    				padding: 30px 40px;
    				background-color: white;
    				-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
    				-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
    				box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);">
					<div class="label">Name:</div>
					<div class="field">
						<input type="text" id="pp-name" name="name"
							placeholder="enter your name here" title="Please enter your name"
							class="required form-control" aria-required="true" required>
					</div>
					<div class="label">Email:</div>
					<div class="field">
						<input type="text" id="pp-email" name="email"
							placeholder="enter your email address here"
							title="Please enter your email address" class="required email form-control"
							aria-required="true" required>
					</div>
					<div class="label">Phone Number:</div>
					<div class="field">
						<input type="text" id="pp-phone" name="phone"
							placeholder="enter your phone number here"
							title="Please enter your phone number" class="required phone form-control"
							aria-required="true" required>
					</div>
					<div class="label">Message:</div>
					<div class="field">
						<textarea id="about-project" name="message"
							placeholder="enter your message here"></textarea>
					</div>
					<div id="mail-status"></div>
					<input type="submit" name="submit" value="Send Message" class="btn btn-success"
						id="send-message" style="clear: both;">
					<%
						if (null != message) {
							out.println("<div class='" + status + "'>"
									+ message + "</div>");
						}
					%>
				</form>
				</div>
				</div>
				</div>
			</div>
	<!-- central -->
</body>
</html>