<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/8/2022
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <table border="1" style="text-align: center">
        <tr>
            <th>Tên sản phẩm</th>
            <th>Giá sản phẩm</th>
            <th>Mô tả sản phẩm</th>
            <th>Nhà sản xuất</th>
        </tr>
        <tr>
            <td><input name="name" value="${productUpdate.getName()}" ></td>
            <td><input name="price" value="${productUpdate.getPrice()}" ></td>
            <td><input name="description" value="${productUpdate.getDescription()}" ></td>
            <td><input name="manufacturer" value="${productUpdate.getManufacturer()}" ></td>
        </tr>
    </table>
    <input type="submit" name="action" value="update">
</form>
</body>
</html>
