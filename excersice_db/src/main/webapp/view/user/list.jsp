<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/8/2022
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style>
        .edit{
            background: blue;
            color: white;
            border: 1px solid black;
        }
        .delete{
            background: red;
            color: white;
            border: 1px solid black;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<h1>Trang hiển thị người dùng</h1>
<pre><a href="/user?action=add">Thêm mới</a></pre>

<form action="/user">
    <input type="text" name="countrySearch" placeholder="Nhập tên  quốc gia">
    <button type="submit" name="action" value="search" >Tìm kiếm</button>
</form>

<table  class="new table table-striped">
    <tr>
        <th>Tên</th>
        <th>Email</th>
        <th>Quốc gia</th>
        <th>Sửa chữa</th>
        <th>Xoá</th>
    </tr>
    <c:forEach var="user" items="${user}">
        <tr>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td><a class="edit" href="/user?action=edit&id=${user.id}">Sửa chữa</a></td>
            <td><a class="delete" href="/user?action=delete&id=${user.id}">Xoá</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>