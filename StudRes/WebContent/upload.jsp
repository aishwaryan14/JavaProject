<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPLOAD</title>
<link
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 rel="stylesheet"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">
</head>

<body>
<%
     String uname= (String)session.getAttribute("user");
     String upass= (String)session.getAttribute("pass");
     System.out.println(uname);
	 System.out.println(upass);
	 request.setAttribute("usr",uname); 
%>
 <c:choose>
	<c:when test="${usr eq 'admin'}">
        	
      <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
      	<a class="navbar-brand" href="#"><img src="http://d2e9h3gjmozu47.cloudfront.net/brand.png" width="100" height="50" alt=""></a>
		  <a class="navbar-brand" href="homePage.jsp">Home</a>
  			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    			<span class="navbar-toggler-icon"></span>
  			</button>
  		 <form action="Logout" method="post">
     		 <input class="btn btn-link" type="submit" value="Logout">
   		 </form>
		</nav>  
 		<div class="container col-lg-6">
  			<h1 class="text-center">UPLOAD</h1>
  				<div class="card">
   					<div class="card-body">
    					<form method="post" class="form-group" action="Fileupload" enctype="multipart/form-data">
     					<div class="form-group">
      					<label for="uploaded file">Upload file:</label>
       					<input type="file" name="file" size="50" />
       					<div><label>Department</label>
       					<input type="text" name="department"/></div>
       					<div><label>Semester</label>
       					<input type="text" name="semester"/></div>
       					<div><label>Subject</label>
       					<input type="text" name="subject"/></div>
       					<div><label>Description</label>
       					<input type="text" name="description"/></div>
     					</div>
	  			   		<input type="submit" value="Save" class="btn btn-success">
    					</form>
   					</div>
			  </div>
 		</div>
      </c:when>
      <c:otherwise>
         <h1>Cannot find page!</h1>
      </c:otherwise>
    </c:choose>
</body>
</html>