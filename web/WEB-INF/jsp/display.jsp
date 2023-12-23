<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css">
    <style>
        .display-box{
            width: 1200px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="display-box">
        <h4 class="dis-title">
            Book Display
        </h4>
        <a href="${pageContext.request.contextPath}/book/toAddBook" class="btn btn-primary">Add Book</a>
        <table class="table table-striped table-hover">
            <tr>
                <th>ID</th>
                <th>BOOK NAME</th>
                <th>BOOK COUNT</th>
                <th>BOOK SUMMARY</th>
            </tr>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td>${book.bookId}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCount}</td>
                    <td>${book.bookSum}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
