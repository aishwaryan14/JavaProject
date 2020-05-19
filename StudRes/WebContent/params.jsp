<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>c:param Example2</title>
</head>
<body>
<c:redirect url="/display.jsp" >
 <c:param name="UserId" value="222"/>
 <c:param name="UserName" value="ChaitanyaSingh"/>
</c:redirect>
${completeURL}
</body>
</html>