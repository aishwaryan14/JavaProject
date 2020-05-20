<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notification</title>
</head>
<body>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/finaldb"
        user="root" password="mysql"
    /> 
    <sql:query var="listEvents"   dataSource="${myDS}">
        SELECT * FROM scraper
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of all upcoming events</h2></caption>
            <tr>
                <th>subject</th>
                <th>event</th>
                <th>date</th>
                
            </tr>
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