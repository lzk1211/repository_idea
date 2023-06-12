<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2023/5/16
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.css" rel="stylesheet">
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>this is all orders</h1>
<table class="table table-hover table-striped table-bordered">
    <tr>
        <th>oid</th>
        <th>total</th>
        <th>payType</th>
        <th>name</th>
        <th>detail</th>
    </tr>

    <c:forEach items="${list}" var="o">
        <tr>
            <td>${o.oid}</td>
            <td>${o.total}</td>
            <td>${o.paytype}</td>
            <td>${o.u.name}</td>
            <td>&nbsp;
                <table class="table table-hover table-striped table-bordered">
                    <tr>
                        <th>num</th>
                        <th>product</th>
                        <th>price</th>
                        <th>subtotal</th>
                        <th>type</th>
                    </tr>
                    <c:forEach items="${o.details}" var="d">
                        <tr>
                            <td>${d.num}</td>
                            <td>${d.product.pname}</td>
                            <td>${d.product.nprice}</td>
                            <td>${d.product.nprice * d.num}</td>
                            <td>${d.product.types.tname}</td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
