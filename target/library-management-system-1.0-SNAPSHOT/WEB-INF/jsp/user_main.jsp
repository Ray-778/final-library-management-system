<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>用户主页</title>
    <link rel="shortcut icon"  href="img/library.ico" />
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('user_header.html');
        })
    </script>
</head>
<body background="img/user_main.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header"></div>
<div style="padding: 70px 550px 10px"></div>
<a class="btn btn-success btn-sm" href="user_bookinfo.html" role="button">借阅图书信息</a>
<div class="panel panel-default" style="width: 90%;margin-left: 5%">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">借阅最多的图书</h3>
        </div>
        <div class="panel-body">
    <table class="table table-hover">
        <tbody>
        <tr>
            <th>图书号</th>
            <td>${book.bookId}</td>
        </tr>
        <tr>
            <th>图书名</th>
            <td>${book.name}</td>
        </tr>
        <tr>
            <th>图书类</th>
            <td>${book.class_name}</td>
        </tr>
        </tbody>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>图书号</th>--%>
<%--            <th>图书名</th>--%>
<%--            <th>图书类</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach items="${book}" var="alog">--%>
<%--            <tr>--%>
<%--                    <td><c:out value="${alog.bookId}"></c:out></td>--%>
<%--                    <td><c:out value="${alog.name}"></c:out></td>--%>
<%--                <td><c:out value="${alog.classname}"></c:out></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
    </table>
</div>
</body>
</html>

