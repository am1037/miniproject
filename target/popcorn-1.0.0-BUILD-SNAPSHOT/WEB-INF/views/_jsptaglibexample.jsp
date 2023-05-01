<%--
  Created by IntelliJ IDEA.
  User: 정민기
  Date: 2023-04-27
  Time: 오후 4:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--
  Created by IntelliJ IDEA.
  User: 정민기
  Date: 2023-04-03
  Time: 오후 2:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<table>
  <th>ID</th>
  <th>영화제목</th>
  <th>상영시간</th>
  <c:forEach var="movie" items="${TitleList}">
    <tr>
      <td>${movie.id}</td>
      <td>${movie.title}</td>
      <td>${movie.length}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>

</html>
