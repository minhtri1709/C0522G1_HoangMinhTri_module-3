<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/8/2022
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Trang thêm mới người dùng</h1>
<a href="/user">Quay lại trang hiển thị</a>
<c:if test="${message !=null}">
    <span style="color: blue">${message}</span>
</c:if>
<form action="/user?action=add" method="post">
    <table>
        <tr>
            <td>
                Name:
                <input type="text" name="name"/>
            </td>
            <td>
                Email:
                <input type="text" name="email"/>
            </td>
            <td>
                Country:
                <input type="text" name="country"/>
            </td>
        </tr>
    </table>
    <button>Lưu thông tin</button>
</form>
</body>
</html>