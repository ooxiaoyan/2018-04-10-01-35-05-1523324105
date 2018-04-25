<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>

    <style type="text/css">
        table.mytable {
            margin: 0 auto;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-collapse: collapse;
            text-align: center;
            width: 25%;
        }

        table.mytable th, table.mytable td{
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #000000;
        }

        table.mytable th {
            background-color: #222020;
            color: white;
        }

        .tr_gray {
            background-color: #bebcbc;
        }
        .tr_white {
            background-color: white;
        }
    </style>
</head>
<body>

<table class="mytable">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
    </tr>
    <c:forEach items="${allEmployees}" var="item" varStatus="status">
        <c:if test="${status.index % 2 == 0}">
            <tr class="tr_gray">
        </c:if>
        <c:if test="${status.index % 2 != 0}">
            <tr class="tr_white">
        </c:if>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.age}</td>
            <td>${item.gender}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
