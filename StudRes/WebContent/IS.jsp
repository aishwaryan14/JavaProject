<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ISE</title>

<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.18.0/css/mdb.min.css" rel="stylesheet">

<link
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 rel="stylesheet"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="jquery.rating.css">
        <script src="jquery.js"></script>
        <script src="jquery.rating.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">
    <img src="http://d2e9h3gjmozu47.cloudfront.net/brand.png" width="100" height="50" alt="">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="homePage.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="https://www.msrit.edu/">College Website</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Departments
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="IS.jsp">ISE</a>
          <a class="dropdown-item" href="#">CSE</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Common</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp">Contact Us</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
 <div class="container col-lg-6">
  <h1 class="text-center">ISE</h1>
  <div class="card">
   <div class="card-body">
    <form method="get" class="form-group" action="IS.jsp">
     <div class="form-group">
     <div>
       <label>Subject</label>
       <select class="browser-default custom-select" name="subject">
  		 <option selected>Choose subject</option>
  		 <option value="J2EE">J2EE</option>
  		 <option value="JAVA">JAVA</option>
  		 <option value="OOADP">OOADP</option>
  		 <option value="ML">ML</option>
  		 <option value="IPR">IPR</option>
  		 <option value="OS">OS</option>
  		</select>
     </div>
     <div>  
       <label>Semester</label>
        <select class="browser-default custom-select" name="semester">
  		 <option selected>Choose semester</option>
  		 <option value="1">1</option>
  		 <option value="2">2</option>
  		 <option value="3">3</option>
  		 <option value="4">4</option>
  		 <option value="5">5</option>
  		 <option value="6">6</option>
  		 <option value="7">7</option>
  		 <option value="8">8</option>
	    </select>
     </div>
     </div>
     <input type="submit" value="Submit" class="btn btn-success">
    </form>
   </div>
  </div>
 </div>
 <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/java_demo"
        user="root" password="mysql"
    /> 
    
   
   
    			
       <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM final
       </sql:query>
       
       <% String subject = request.getParameter("subject");
       if( subject != null && subject.length() > 0 ) {%>
    
    
     
       <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM final where subject = ? and semester = ?
        <sql:param value = "${param['subject']}" />
        <sql:param value = "${param['semester']}" />
        
    </sql:query>
    
    <% } %>
   
    
   
  
    
    
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of available materials</h2></caption>
            <tr>
                <th>ID</th>
                <th>department</th>
                <th>semester</th>
                <th>subject</th>
                <th>description</th>
                <th>pdf</th>
                <th>Rating</th>
                
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.department}" /></td>
                    <td><c:out value="${user.semester}" /></td>
                    <td><c:out value="${user.subject}" /></td>
                    <td><c:out value="${user.description}" /></td>
                    <td><form action="FileReadPdf"> <input type="hidden" name="bookId" value="${user.id}" /><input type="submit" value = "download"></form></td>
                    <td><c:out value="${user.Rating}" /></td>
                    <td><form action="IS.jsp"> <input type="hidden" name="bookId" value="${user.id}" /><input type="radio" name="rating" value="1" class="star">
            <input type="radio" name="rating" value="2" class="star">
            <input type="radio" name="rating" value="3" class="star">
            <input type="radio" name="rating" value="4" class="star">
            <input type="radio" name="rating" value="5" class="star"><input type="submit" value = "Rate"></form></td>
            </tr>
            </c:forEach>
        </table>
    </div>

<sql:query var="rating"   dataSource="${myDS}">
        		select * from final where id = ?
        		<sql:param value="${param.bookId}" />
    
    
    			</sql:query>
    			
    			
   
   <c:choose>	
   
  <c:when test="${not empty param.rating}">       
  <c:forEach var="event" items="${rating.rows}">
        <sql:update dataSource="${myDS}" var="newCitizen">
        
                		
            		
            UPDATE final SET rating= ? where id=?
            <sql:param value="${(event.rating+param.rating)/2}" />
            <sql:param value="${param.bookId}" />
            
            
            
            
           
        </sql:update>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <font color="#cc0000">Please enter mandatory information.</font>
    </c:otherwise>
    </c:choose>
    
 
</body>
</html>
