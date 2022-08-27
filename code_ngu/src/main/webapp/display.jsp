<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/8/2022
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Thông tin chi tiết</h1>
<table border="1" style="text-align: center">
    <tr>
        <th>Tên sản phẩm</th>
        <th>Giá sản phẩm</th>
        <th>Mô tả sản phẩm</th>
        <th>Nhà sản xuất</th>
    </tr>
    <tr>
        <td>${productDisplay.getName()}</td>
        <td>${productDisplay.getPrice()}</td>
        <td>${productDisplay.getDescription()}</td>
        <td>${productDisplay.getManufacturer()}</td>
    </tr>
</table>
</body>
</html>
