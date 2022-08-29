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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<h1>Trang thêm mới User</h1>
<a href="/user">
    <i class="fa-solid h5 mx-1"></i> Trang Chủ</a>
<c:if test="${message !=null}">
    <span style="color: blue">${message}</span>
</c:if>
<form action="/user?action=permission" method="post">
    <table >
        <tr>
            <td>
                Name:
                <input type="text" name="name"/>
            </td>
        </tr>
        <tr>
            <td>
                Email:
                <input type="text" name="email"/>
            </td>
        </tr>
        <tr>
            <td>
                Country:
                <input type="text" name="country"/>
            </td>
        </tr>
    </table>

    <form>

        <!-- Vertical -->
        <div class="form-group">
            <label for="myEmail">Email</label>
            <input type="email" id = "myEmail" class="form-control" placeholder="Email">
            <label for="myPassword">Password</label>
            <input type="password" id="myPassword" class="form-control" placeholder="Password">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>

    </form>
    <button>Save</button>
</form>
</body>
</html>