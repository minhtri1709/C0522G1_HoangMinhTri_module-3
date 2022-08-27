<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/8/2022
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <input type="text" name="name" placeholder="Nhập tên tìm kiếm">
    <input type="submit" name="action" value="search">
    <a href="/product?action=create">Thêm mới sản phẩm</a>
</form>
<table border="1" style="text-align: center">
    <tr>
        <th>Số thứ tự</th>
        <th>Tên sản phẩm</th>
        <th>Giá sản phẩm</th>
        <th>Mô tả sản phẩm</th>
        <th>Nhà sản xuất</th>
    </tr>
    <c:forEach varStatus="status" var="product" items="${productList}">
        <tr>
            <td>${status.count}</td>
            <td><a href="/product?action=display&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getManufacturer()}</td>
            <td><a href="/product?action=delete&id=${product.getId()}">Xoá</a></td>
            <td><a href="/product?action=update&id=${product.getId()}">Cập nhật</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
