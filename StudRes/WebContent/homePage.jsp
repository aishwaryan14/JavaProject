<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE>
<html> 
<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 </head>
<body>
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <!-- <a class="navbar-brand" href="#">MSRIT Student Resources</a>-->
  <a class="navbar-brand" href="#">
    <img src="" width="100" height="50" alt="">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="aboutus.html">About Us</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="https://www.msrit.edu/">College Website</a>
      </li>
      
        <%
     String uname= (String)session.getAttribute("user");
     String upass= (String)session.getAttribute("pass");
     System.out.println(uname);
	 System.out.println(upass);
	 request.setAttribute("usr",uname);
     
    %>
    
      
     
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Departments
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="IS.jsp">ISE</a>
          <a class="dropdown-item" href="CSE.jsp">CSE</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Common</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp">Contact Us</a>
      </li>
      
       <c:choose>
      
      
        <c:when test="${usr eq 'admin'}">
        	
            <li class="nav-item active">
         <a class="nav-link" href="upload.jsp">Upload file</a>
      		</li>
      		
      		
      		
      		  <form action="Logout" method="post">
     	 <input class="btn btn-link" type="submit" value="Logout">
   			</form>
        </c:when>
        <c:otherwise>
             <li class="nav-item active">
         <a class="nav-link" href="login.jsp">Login</a>
      		</li>
        </c:otherwise>
    </c:choose>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
	      <img class="d-block w-100" src="" style="height: 425px; opacity: .2;" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
		<h1 class="text-dark">Welcome to our resources site</h1>
    	<p class="text-body">This is a common platform for all departments and semesters to share and use repositories containing all kinds of study materials.</p>
	  </div>
    </div>    
    <div class="carousel-item">
      	<img class="d-block w-100" src="" style="height: 425px;  opacity: .2;" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
	    <h1 class="text-dark">Contact us</h1>
    	<p class="text-body ">Request materials by contacting us.</p>
    	<a href="contact.jsp" class="btn btn-info">Contact us</a>
	  </div>
    </div>
    <div class="carousel-item">
    	  <img class="d-block w-100" src="" style="height: 425px; opacity: .2" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
	    <h1 class="text-dark">Login as admin</h1>
    	<p class="text-body ">Login as admin and upload materials.</p>
    	<a href="login.jsp" class="btn btn-info">Login</a>
	  </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<section style="background:#2B2C40;padding: 60px 0;
text-align: center;">


<div class="col">
			<div>
				<div class="text-center">
					<h1><i style="font:italic;" class="text-light">Latest Notifications</i></h1>
						<p class="text-secondary">We are constantly updating</p>
				</div>
			</div>
</div>		
<div class="container" style="padding:40px 50px;">
<div class="row">
  <div class="col">
    <div class="card" style="width: 18rem; height:15rem;">
      <div class="card-body" style="padding: 30px 40px;
    				background-color: white;
    				-webkit-box-shadow: 10px 10px 15px 10px rgba(0.50,0.50,0.50,0.50);
    				-moz-box-shadow: 10px 10px 15px 10px rgba(0.50,0.50,0.50,0.50);
    				box-shadow: 10px 10px 15px 10px rgba(0.50,0.50,0.50,0.50);">
        <h5 class="card-title">Information Science</h5>
        		<sql:setDataSource	var="myDS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/finaldb" user="root" password="mysql" /> 
    			<sql:query var="listEvents"   dataSource="${myDS}">
        		select * from scraper where dept="ISE" ORDER BY id DESC LIMIT 2
    			</sql:query>
     			<div align="center">
      				<ul class="list-group list-group-flush">
      				<c:forEach var="event" items="${listEvents.rows}">
      					<li class="list-group-item">
                		<c:out value="${event.subject}" />
                		<c:out value="${event.event}" />
                    	<c:out value="${event.date}" /></li>
            		</c:forEach>
            	 </ul>	
            	</div>	
        <a href="notificationISE.jsp" class="btn btn-primary">See more</a>
      </div>
    </div>
  </div>
  
  <div class="col">
    <div class="card" style="width: 18rem; height:15rem;">
      <div class="card-body" style="padding: 30px 40px;
    				background-color: white;
    				-webkit-box-shadow: 10px 10px 15px 10px rgba(0.50,0.50,0.50,0.50);
    				-moz-box-shadow: 10px 10px 15px 10px rgba(0.50,0.50,0.50,0.50);
    				box-shadow: 10px 10px 15px 10px rgba(0.50,0.50,0.50,0.50);">
        <h5 class="card-title">Computer Science</h5>
 		        <sql:setDataSource	var="myDS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/finaldb" user="root" password="mysql" /> 
    			<sql:query var="listEvents"   dataSource="${myDS}">
        		select * from scraper where dept="CSE" ORDER BY id DESC LIMIT 2
    			</sql:query>
     			<div align="center">
      				<ul class="list-group list-group-flush">
      				<c:forEach var="event" items="${listEvents.rows}">
      					<li class="list-group-item">
                		<c:out value="${event.subject}" />
                		<c:out value="${event.event}" />
                    	<c:out value="${event.date}" /></li>
            		</c:forEach>
            	 </ul>	
            	</div>	
        <a href="notificationCSE.jsp" class="btn btn-primary">See more</a>
      </div>
    </div>
   </div> 
   
  <div class="col">
    <div class="card" style="width: 18rem; height:15rem;">
      <div class="card-body" style="padding: 30px 40px;
    				background-color: white;
    				-webkit-box-shadow: 10px 10px 15px 10px rgba(0.50,0.50,0.50,0.50);
    				-moz-box-shadow: 10px 10px 15px 10px rgba(0.50,0.50,0.50,0.50);
    				box-shadow: 10px 10px 15px 10px rgba(0.50,0.50,0.50,0.50);">
        <h5 class="card-title">Electronics and Communications</h5>
 		        <sql:setDataSource	var="myDS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/finaldb" user="root" password="mysql" /> 
    			<sql:query var="listEvents"   dataSource="${myDS}">
        		select * from scraper where dept="ECE" ORDER BY id DESC LIMIT 2
    			</sql:query>
     			<div align="center">
     			 <ul class="list-group list-group-flush">
      				<c:forEach var="event" items="${listEvents.rows}">
      					<li class="list-group-item">
                		<c:out value="${event.subject}" />
                		<c:out value="${event.event}" />
                    	<c:out value="${event.date}" /></li>
            		</c:forEach>
            	 </ul>	
            	</div>	
        <a href="notificationECE.jsp" class="btn btn-primary">See more</a>
      </div>
    </div>
  </div>
  
</div>
</div>
</section>


</body>
</html>