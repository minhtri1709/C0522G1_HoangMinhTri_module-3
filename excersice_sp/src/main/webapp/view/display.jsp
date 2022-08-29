<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/8/2022
  Time: 8:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <style>
        .edit {
            background: blue;
            color: white;
            border: 1px solid black;
        }
        .delete {
            background: red;
            color: white;
            border: 1px solid black;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<h1>Trang hiển thị user</h1>
<pre><a href="/user?action=add">Thêm mới</a></pre>

<form action="/user">
    <input type="text" name="countrySearch" placeholder="nhập quốc gia">
    <button type="submit" name="action" value="search">Tìm kiếm</button>
</form>

<table class="new table table-striped">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td>${user.getName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getCountry()}</td>
            <td><a class="edit" href="/user?action=edit&id=${user.id}">Edit</a></td>
            <td>
                <button onclick="modalDelete('${user.id}','${user.getName()}')" type="button" class="btn btn-primary"
                        data-bs-toggle="modal"
                        data-bs-target="#exampleModal">
                    Delete
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/user">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input hidden name="id" id="idDelete">
                    <input hidden name="action" value="delete">
                    <span>Ban co muon xoa : </span>
                    <span style="color:red" id="nameDelete"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">delete</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    function modalDelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerHTML = name;
    }
</script>
</body>
</html>
