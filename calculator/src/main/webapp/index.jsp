<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24/8/2022
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form action="/CalculatorServlet" method="get">
    <h1>Simple Calculator</h1>
    <table>
        <tr>
            <td >First operand:</td>
            <td>
                <input name = "firstNumber" type="number">
            </td>
        </tr>
        <tr>
            <td>Operator:</td>
            <td>
                <select name="calculator">
                    <option value="+">Addition</option>
                    <option value="-">Subtraction</option>
                    <option value="*">Multiplication</option>
                    <option value="/">Division</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Second operand:</td>
            <td>
                <input name="secondNumber" type="number">
            </td>
        </tr>
        <tr>
            <td>
                <button type="submit">Calculate</button>
            </td>
        </tr>

    </table>
</form>
</body>
</html>
