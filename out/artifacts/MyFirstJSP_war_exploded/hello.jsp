<%--
  Created by IntelliJ IDEA.
  User: fefe
  Date: 2016/04/14
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" value="GETパラメーターサンプル"/>

<%@include file="template/header.jsp" %>

<h1>ようこそHelloへ</h1>

<c:if test='${name == "ことり"}'>
    ${name} is μ's!
</c:if>

<%@include file="template/footer.jsp" %>