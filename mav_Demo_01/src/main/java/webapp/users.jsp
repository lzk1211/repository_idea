<%--
  Created by IntelliJ IDEA.
  User: 20252
  Date: 2023/5/16
  Time: 20:00
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
<h1>this is all users</h1>
<table class="table table-hover table-striped table-bordered">
    <tr>
        <th>uid</th>
        <th>name</th>
        <th>pass</th>
        <th>age</th>
        <th>tel</th>
        <th>addr</th>
        <th>orders</th>
    </tr>

    <c:forEach items="${users}" var="u">
        <tr>
            <td>${u.uid}</td>
            <td>${u.name}</td>
            <td>${u.pass}</td>
            <td>${u.age}</td>
            <td>${u.tel}</td>
            <td>${u.addr}</td>
            <td>&nbsp;
                <table class="table table-hover table-striped table-bordered">
                    <tr>
                        <th>oid</th>
                        <th>total</th>
                        <th>paytype</th>
                        <th>details</th>
                    </tr>
                    <c:forEach items="${u.orders}" var="o">
                        <tr>
                            <td>${o.oid}</td>
                            <td>${o.total}</td>
                            <td>${o.paytype}</td>
                            <td>
                                <table class="table table-hover table-striped table-bordered">
                                    <tr>
                                        <th>did</th>
                                        <th>num</th>
                                        <th>pname</th>
                                        <th>img</th>
                                        <th>nprice</th>
                                        <th>oprice</th>
                                        <th>tname</th>
                                        <th>tdesc</th>
                                    </tr>
                                    <c:forEach items="${o.details}" var="d">
                                        <tr>
                                            <td>${d.did}</td>
                                            <td>${d.num}</td>
                                            <td>${d.product.pname}</td>
                                            <td>${d.product.img}</td>
                                            <td>${d.product.nprice}</td>
                                            <td>${d.product.oprice}</td>
                                            <td>${d.product.types.tname}</td>
                                            <td>${d.product.types.tdesc}</td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
