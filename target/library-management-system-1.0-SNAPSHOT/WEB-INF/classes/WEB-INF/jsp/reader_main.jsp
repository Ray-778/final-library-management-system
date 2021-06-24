<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${readercard.name}的主页</title>
    <link rel="shortcut icon"  href="img/library.ico" />
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        })
    </script>

</head>
<body background="img/Rmain.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header"></div>
<a class="btn btn-success btn-sm" href="reader_djs.html" role="button">还书倒计时</a>
<div class="panel-body">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>图书号</th>
            <th>借出日期</th>
            <th>剩余还书时间</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="alog">
            <tr>
                <c:if test="${empty alog.backDate}">
                    <td><c:out value="${alog.bookId}"></c:out></td>
                    <td><fmt:formatDate value="${alog.lendDate}" pattern="yyyy-MM-dd"></fmt:formatDate> </td>
                    <td><c:out value="${alog.djs}"></c:out> </td>
                </c:if>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


</body>
</html>
