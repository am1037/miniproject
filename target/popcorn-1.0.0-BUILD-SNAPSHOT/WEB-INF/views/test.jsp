<%--
  Created by IntelliJ IDEA.
  User: 정민기
  Date: 2023-05-01
  Time: 오후 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<input id="date" placeholder="YYYYMMDD">
<button id="btn">hit me and check console log</button><br>
<div id="result">

</div>
<script>
    $('#btn').click(function() {
        var date = $('#date').val();
        $.ajax({
            url: 'cgv',
            type: 'GET',
            data: {
                date: date
            },
            success: function (data) {
                console.log(data);
                $('#result').html(data);
            }
        })
    })
</script>
</body>
</html>
