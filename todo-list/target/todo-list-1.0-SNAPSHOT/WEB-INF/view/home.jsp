<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>ToDoList application</title>
</head>
<body>
    <div align="center">
        <c:url var="itemsLink" value="${Mappings.ITEMS}" />
        <h2><a href="${itemsLink}">Show ToDo Items </a></h2>
    </div>

</body>
</html>
