<%--
  Created by IntelliJ IDEA.
  User: 정민기
  Date: 2023-05-01
  Time: 오후 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
<c:forEach var="m" items="${screenList}">
    <tr>
        <td>${m.title}</td>
        <td>${m.screen}</td>
        <td>${m.time}</td>
    </tr>
</c:forEach>
</table>
