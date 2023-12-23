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
    Book Addition
  </h4>
  <form action="${pageContext.request.contextPath}/book/addBook" method="get">
    <table class="table table-striped table-hover">
      <tr>
        <th>ID</th>
        <th>BOOK NAME</th>
        <th>BOOK COUNT</th>
        <th>BOOK SUMMARY</th>
      </tr>
      <tr>
        <td><input type="text" name="bookId" disabled/></td>
        <td><input type="text" name="bookName"/></td>
        <td><input type="text" name="bookCount"/></td>
        <td><input type="text" name="bookSum"/></td>
      </tr>
    </table>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>

</div>
</body>
</html>
