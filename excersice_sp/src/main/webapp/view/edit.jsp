<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/8/2022
  Time: 8:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>Trang chỉnh sửa User</h1>
    <a href="/user">Quay lại trang hiển thị</a>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <c:if test="${existingUser != null}">
                <input type="hidden" name="id" value="${existingUser.id}"/>
            </c:if>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="${existingUser.name}"/>
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email" size="45"
                           value="${existingUser.email}"/>
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country" size="45"
                           value="${existingUser.country}"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
