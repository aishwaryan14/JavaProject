<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notification</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/finaldb"
        user="root" password="mysql"
    /> 
    <sql:query var="listEvents"   dataSource="${myDS}">
        SELECT * FROM scraper where dept="ECE"
    </sql:query>
     
     <caption ><h1>List of all upcoming events</h1></caption> 
    <div align="center" style="padding: 30px 40px;
    				background-color: white;
    				-webkit-box-shadow: 10px 10px 15px 10px rgba(0.25,0.25,0.25,0.25);
    				-moz-box-shadow: 10px 10px 15px 10px rgba(0.25,0.25,0.25,0.25);
    				box-shadow: 10px 10px 15px 10px rgba(0.25,0.25,0.25,0.25);">
        <table border="1" cellpadding="5" class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th>subject</th>
                <th>event</th>
                <th>date</th>
                
            </tr>
        </thead>    
            <c:forEach var="event" items="${listEvents.rows}">
                <tr>
                    <td><c:out value="${event.subject}" /></td>
                    <td><c:out value="${event.event}" /></td>
                    <td><c:out value="${event.date}" /></td>
                    </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>