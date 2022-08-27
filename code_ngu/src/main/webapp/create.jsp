<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/8/2022
  Time: 10:26 AM
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
            <th>Số thứ tự</th>
            <th>Tên sản phẩm</th>
            <th>Giá sản phẩm</th>
            <th>Mô tả sản phẩm</th>
            <th>Nhà sản xuất</th>
        </tr>
        <tr>
            <td><input type="number" name="id"></td>
            <td><input type="text" name="name"></td>
            <td><input type="number" name="price"></td>
            <td><input type="text" name="description"></td>
            <td><input type="text" name="manufacturer"></td>

        </tr>
    </table>
    <input type="submit" name="action" value="create">
</form>
</body>
</html>
