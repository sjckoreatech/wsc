<%--
  Created by IntelliJ IDEA.
  User: youkang
  Date: 2016-12-07
  Time: 오후 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>우린 언제 결혼 하나!</title>
    <style type="text/css">
        h1 {
            text-align: center;
        }
        /*body{
            background-color: bisque;
            background-repeat: no-repeat;
        }*/
        ul{
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }
        li{
            float: left;
            border-right: 1px solid #bbb; /* 칸 만들기 */
        }
        li a{
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        #menu{
            text-align: center;
        }
        #bottom{
            border: 1px solid black;
            margin-top: 100px;
            margin-bottom: 100px;
            text-align: center;
        }
    </style>
</head>
<body>
<header>
    <h1>
        <div style="color:YELLOW"><b>우</b><span style="color:Black"><b>린 언제</b></span></div>
        <div style="color:YELLOW"><b>결</b><span style="color:Black"><b>혼 하나</b></span></div>
    </h1>
</header>
<nav>
    <ul id="menu">
        <li><a href="/">메인</a></li>
        <sec:authorize access="isAnonymous()">
            <li><a href="/pc/park">공원</a></li>
            <li><a href="/cc/culture">문화시설</a></li>
            <li><a href="/dc/dust">통합 대기 환경 등급</a></li>
        </sec:authorize>
    </ul>
</nav>
<section>
    <article align="center">
        <br><br> 원하는 지역 검색<br><br>
        <form action="/dc/dustResult" method="GET">
            <input type="text" name="searchWord" placeholder="검색어"/>
            <input type="submit" value="검색">
        </form>
        '권역명' 또는 '권역명/측정소명' 으로 검색<br><br>
        예) 도심권, 서북권, 동남권, <br>동북권/노원구, 도심권/중구 ...
    </article>
</section>
<footer id = "bottom">
    <h5>한국기술교육대학교 컴퓨터공학부</h5>
    <h5>Copyright (c) WebServiceComputing 우결팀</h5>
</footer>

</body>
</html>
