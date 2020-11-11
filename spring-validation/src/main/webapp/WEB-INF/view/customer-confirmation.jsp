<%--
  Created by IntelliJ IDEA.
  User: ibrahim
  Date: 11/11/2020
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation Page</title>
</head>
<body>

The customer is confirmed: ${customer.firstName} ${customer.lastName}
<br>
Free passes: ${customer.freePasses}
<br>
Postal code: ${customer.postalCode}
<br>
Course code: ${customer.courseCode}
<br>
</body>
</html>
