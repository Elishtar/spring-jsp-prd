<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <!-- Подключаем bootstrap CSS,
        Spring boot автоматически замапит ресурс благодаря зависимости webjars в pom.xml -->
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
    <!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />
</head>
<body>

<div class="container">

    <div>
        <table>
            <caption><h2>Transactions</h2></caption>
            <tr>
                <th>ID</th>
                <th>Status</th>
            </tr>
            <c:forEach var="transaction" items="${transactions}">
                <tr>
                    <td><a href="/transaction1"><c:out value="${transaction.id}" />&nbsp;&nbsp;&nbsp;</a></td>
                    <td><a href="/transaction2"><c:out value="${transaction.status}" />&nbsp;&nbsp;&nbsp;</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>