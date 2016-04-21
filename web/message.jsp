<%--
  Created by IntelliJ IDEA.
  User: fefe
  Date: 2016/04/21
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" value="Sessionサンプル"/>

<%@include file="template/header.jsp" %>

<h1>メッセージ置き場</h1>
<form action="<c:url value="/message"/>" method="post">
    <input type="text" name="message">
    <input type="submit" value="送信">
</form>

    <c:forEach var="message" items="${messages}">
        <p>${message}</p>
    </c:forEach>

<%@include file="template/footer.jsp" %>

</body>
</html>
