<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
  <head><title>Display details</title></head>
  <body>
    <h1>the details you entered!)</h1>
    <table>
      <tr><td>First name</td><td><c:out value="${param.firstName}" /></td></tr>
      <tr><td>Last name</td> <td><c:out value="${param.lastName}"  /></td></tr>
      <tr><td>Age</td>       <td><c:out value="${param.age}"       /></td></tr>
    </table>
  </body>
</html>