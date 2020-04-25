<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>&lt;c:param&gt; Demo</title>
    </head>
    <body>
        <h1>&lt;c:param&gt; Demo</h1>
        <c:url var="myURL" value="/sendparams.jsp">
        	<c:param name="param1" value="value1"/>
          	<c:param name="param2" value="value2"/>
       	</c:url>
      <a href="/<c:out value="${myURL}"/>">
         Click to send two test parametets and values using &lt;c:param&gt;</a>
     <br/>
    <br/>
    <c:if test="${not empty param.param1 && not empty param.param2}">
      Param1
      <c:out value="${param.param1}"/><br/>
      Param2
      <c:out value="${param.param2}"/>
    </c:if>
  </body>
</html>