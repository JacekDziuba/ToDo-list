<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>View Item</title>
</head>
<body>
    <div align="center">

        <table border="1" cellpadding="10">

            <caption><h2>Single Item</h2></caption>

            <tr>
                <th>Id</th>
                <th>Title</th>
                <th>Detail</th>
                <th>Deadline</th>
            </tr>

            <tr>
                    <td><c:out value="${viewItem.id}" /></td>
                    <td><c:out value="${viewItem.title}"/></td>
                    <td><c:out value="${viewItem.details}"/></td>
                    <td><c:out value="${viewItem.deadline}"/></td>
            </tr>

        </table>

        <c:url var="itemsLink" value="${Mappings.ITEMS}" />
        <h2><a href="${itemsLink}">Show ToDo Items </a></h2>

    </div>
</body>
</html>
