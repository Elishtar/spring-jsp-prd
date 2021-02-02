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

<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Spring Boot JSP</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Главная</a></li>
                <li><a href="#about">Обо мне</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">

<%--    <div class="starter-template">--%>
<%--        <h1>Пример Spring Boot Web JSP</h1>--%>
<%--        <h2>Сообщение: ${message}</h2>--%>
<%--    </div>--%>

    <div>
        <table>
            <caption><h2>Statistic</h2></caption>
            <tr>
                <th>Type&nbsp;&nbsp;&nbsp;</th>
                <th>Inbound&nbsp;&nbsp;&nbsp;</th>
                <th>Outbound&nbsp;&nbsp;&nbsp;</th>
                <th>Errors&nbsp;&nbsp;&nbsp;</th>
            </tr>
            <c:forEach var="businessType" items="${table}">
                <tr>
                    <td><a href="/transactions"><c:out value="${businessType.name}" /></a>&nbsp;&nbsp;&nbsp;</td>
                    <td><a href="/transactions"><c:out value="${businessType.inbound}" /></a>&nbsp;&nbsp;&nbsp;</td>
                    <td><a href="/transactions"><c:out value="${businessType.outbound}" /></a>&nbsp;&nbsp;&nbsp;</td>
                    <td><a href="/transactions"><c:out value="${businessType.errors}" /></a>&nbsp;&nbsp;&nbsp;</td>
                    <td><a href="/transactions"><c:out value="${businessType.businessReject}" /></a>&nbsp;&nbsp;&nbsp;</td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>