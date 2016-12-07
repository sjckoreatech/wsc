<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        margin-top: 120px;
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
                <li><a href="">메인</a></li>
                <sec:authorize access="isAnonymous()">
                    <li><a href="/pc/park">공원</a></li>
                    <li><a href="/cc/culture">문화시설</a></li>
                    <li><a href="/dc/dust">통합 대기 환경 등급</a></li>
                </sec:authorize>
            </ul>
        </nav>
    <section>
        <article>
            <img src="resources/images/bamsam.jpeg" width="450px" height="300px" align="right">
            <br><br><br>
            <h2>[서비스 소개]</h2>
            <h3>최근 다수의 결혼식 참가로 취업과 결혼이 머지않았다는 사실을 깨달았다<br>
                또한 저출산 시대에 돌입하며 많은 자녀를 낳지 않는 시대에서 자식을 적게 낳고<br>
                잘 키우자는 사회풍조에 따라 더 좋은 환경에서 육아와 신혼을 보낼 수 있도록
                도움을 주는 웹 서비스이다.<br>
            </h3>
        </article>
    </section>
    <footer id = "bottom">
        <h5>한국기술교육대학교 컴퓨터공학부</h5>
        <h5>Copyright (c) WebServiceComputing 우결팀</h5>
    </footer>
    </body>

</html>
