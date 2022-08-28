<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/8/2022
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Muon xoa san pham nay</h1>
<form method="post">
    <table>
        <tr>
            <th>STT</th>
            <th>Ten san pham</th>
            <th>Gia san pham</th>
        </tr>
            <tr>
                <td>${status.count}</td>
                <td>${productDelete.getName()}</td>
                <td>${productDelete.getPrice()}</td>
            </tr>
<%--            <a href="/product?action=delete&${productDelete.getId()}">Xoa san pham</a>--%>
        <input type="submit" name="action" value="delete">
    </table>
</form>
</body>
</html>
