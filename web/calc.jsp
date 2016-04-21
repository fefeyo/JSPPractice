<%--
  Created by IntelliJ IDEA.
  User: fefe
  Date: 2016/04/21
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" value="POSTパラメータサンプル"/>

<%@include file="template/header.jsp" %>

<h1>四則演算</h1>
<p>計算内容を入力してね</p>
<form action="<c:url value="/calc"/>" method="post">
    <input type="number" name="a" required>
    <input type="number" name="b" required><br/>
    <input type="submit" name="ope" value="plus">
    <input type="submit" name="ope" value="minus">
    <input type="submit" name="ope" value="multiple">
    <input type="submit" name="ope" value="divide">
</form>

<c:if test="${ope != null}">
    <h1>${answer[0]} ${ope} ${answer[1]} = ${answer[2]}</h1>
</c:if>

<%@include file="template/footer.jsp" %>