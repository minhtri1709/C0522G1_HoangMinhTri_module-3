<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/8/2022
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Trang thêm mới</h1>
<c:if test="${mess !=null}">
   <span>${mess}</span>
</c:if>
<form action="/product?action =add" method = "post">
    <pre>Số thứ tự:    <input type="number" name="id"></pre>
    <pre>Tên sản phẩm:    <input type="text" name="name"></pre>
    <pre>Giá sản phẩm:    <input type="number" name="priceProduct"></pre>
    <pre>Mô tả sản phẩm:    <input type="text" name="description"></pre>
    <pre>Nhà sản xuất:    <input type="text" name="manufacturer"></pre>
</form>
</body>
</html>
