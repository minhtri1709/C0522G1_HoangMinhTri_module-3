<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/8/2022
  Time: 8:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px">
    <tr>
        <th>STT</th>
        <th>Ten san pham</th>
        <th>Gia san pham</th>
    </tr>
    <c:forEach varStatus="status" items="${productList}" var="product" >
        <tr>
            <td>${status.count}</td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td><a href="/product?action=delete&id=${product.getId()}">Xoa</a></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
