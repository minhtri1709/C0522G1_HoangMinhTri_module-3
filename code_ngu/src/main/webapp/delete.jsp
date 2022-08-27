<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/8/2022
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Bạn có chắc muốn xoá sản phẩm này không ?</h1>
<form method="post">
    <table border="1" style="text-align: center">
        <tr>
            <th>Tên sản phẩm</th>
            <th>Giá sản phẩm</th>
            <th>Mô tả sản phẩm</th>
            <th>Nhà sản xuất</th>
        </tr>
        <tr>
            <td>${productDelete.getName()}</td>
            <td>${productDelete.getPrice()}</td>
            <td>${productDelete.getDescription()}</td>
            <td>${productDelete.getManufacturer()}</td>
        </tr>
    </table>
    <input type="submit" name="action" value="delete">
</form>
</body>
</html>
