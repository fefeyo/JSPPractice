<%--
  Created by IntelliJ IDEA.
  User: fefe
  Date: 2016/04/14
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%-- ページの情報 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- coreタグライブラリの使用宣言 --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- テンプレート化したTitleの指定 --%>
<c:set var="title" value="メインページ"/>

<%-- ヘッダーファイルのインポート --%>
<%@include file="template/header.jsp" %>

<h1>HelloJava</h1>
<%-- <c:url>でURLの自動生成 --%>
<h2><a href="<c:url value="/calc"/>">calc</a><br /></h2>
<h2><a href="<c:url value="/hello"/> ">hello</a><br /></h2>
<h2><a href="<c:url value="/message"/> ">message</a><br /></h2>

<%-- フッターファイルのインポート --%>
<%@include file="template/footer.jsp" %>