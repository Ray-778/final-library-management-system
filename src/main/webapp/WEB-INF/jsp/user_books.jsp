<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>全部图书信息</title>
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
<div style="padding: 70px 550px 10px">
    <form   method="post" action="user_query.html" class="form-inline"  id="searchform">
        <div class="input-group">
            <select name="searchType" id="searchType">
                <option value ="all">匹配所有</option>
                <option value ="tsmc">图书名称</option>
                <option value ="tszz">图书作者</option>
                <option value ="tsisbn">图书ISBN</option>
                <option value ="tslx">图书类型</option>
            </select>
            <input type="text" placeholder="输入..." class="form-control" id="search" name="searchWord" class="form-control"/>
            <span class="input- group-btn">
                            <input type="submit" value="搜索" class="btn btn-default">
            </span>


        </div>
        <script>
            $("#searchfor").submit(function () {
                var val=$("#searc").val();
                if(val==''){
                    alert("请输入关键字");
                    return false;
                }
            })
        </script>
    </form>
</div>
</div>

<div style="position: relative;top: 10%">
    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${error}
        </div>
    </c:if>
</div>
<div class="panel panel-default" style="width: 90%;margin-left: 5%">
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">
            全部图书
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>图书号</th>
                <th>书名</th>
                <th>作者</th>
                <th>出版社</th>
                <th>ISBN</th>
                <th>价格</th>
                <th>剩余数量</th>
                <th>详情</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td><c:out value="${book.bookId}"></c:out></td>
                    <td><c:out value="${book.name}"></c:out></td>
                    <td><c:out value="${book.author}"></c:out></td>
                    <td><c:out value="${book.publish}"></c:out></td>
                    <td><c:out value="${book.isbn}"></c:out></td>
                    <td><c:out value="${book.price}"></c:out></td>
                    <td><c:out value="${book.number}"></c:out></td>
                    <td>
                        <a href="user_book_detail.html?bookId=<c:out value="${book.bookId}"></c:out>">
                        <button type="button" class="btn btn-success btn-xs">详情</button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
