<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/8/2022
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <form method="post" action="/PercentServlet">
  <input type="text" name="product" placeholder="Nhập vào tên sản phẩm"><br>
  <input type="number" name="listPrice" placeholder="Nhập vào giá niêm yết"><br>
  <input type="number" name="percentDiscount" placeholder="Nhập vào tỷ lệ chiết khấu"><br>
  <button type="submit">Tính toán</button>
  </form>
  </body>
</html>
