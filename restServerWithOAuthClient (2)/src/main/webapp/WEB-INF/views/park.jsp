<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pjunbum
  Date: 2016-12-05
  Time: 오전 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>okokko</title>
</head>
<body>
공원 검색<br/>
<form action="/pc/parkResult" method="GET">
    <input type="text" name="searchWord" placeholder="검색어"/>
    <input type="submit" value="검색">
</form>

</body>
</html>
