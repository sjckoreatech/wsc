<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.StringTokenizer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: youkang
  Date: 2016-12-07
  Time: 오후 9:11
  To change this template use File | Settings | File Templates.
--%>
<%
    try {
        String jsp = (String)request.getAttribute("searchWord");
        String strUrl;
        if(jsp.contains("/")) {
            StringTokenizer tokens = new StringTokenizer(jsp);

            String first = tokens.nextToken("/");   // 이름
            String second = tokens.nextToken("/");   // 나이
            System.out.println(first);
            System.out.println(second);
            strUrl = "http://openapi.seoul.go.kr:8088/53796d635073696e373757636e6564/xml/RealtimeCityAir/1/5/" + URLEncoder.encode(first, "UTF-8") + "/" + URLEncoder.encode(second, "UTF-8");
        }
        else {
            strUrl = "http://openapi.seoul.go.kr:8088/53796d635073696e373757636e6564/xml/RealtimeCityAir/1/5/" + URLEncoder.encode(jsp, "UTF-8");
        }
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(strUrl);

        NodeList nodeUrl    = document.getElementsByTagName("MSRRGN_NM");
        NodeList nodeUrl2    = document.getElementsByTagName("MSRSTE_NM");
        NodeList nodeUrl3    = document.getElementsByTagName("IDEX_NM");
        NodeList nodeUrl4    = document.getElementsByTagName("MSRDT");

        String dataUrl[] = new String[nodeUrl.getLength()];
        String dataUrl2[] = new String[nodeUrl.getLength()];
        String dataUrl3[] = new String[nodeUrl.getLength()];
        String dataUrl4[] = new String[nodeUrl.getLength()];

        for(int i = 0 ; i < nodeUrl.getLength() ; i++) {
            dataUrl[i] = nodeUrl.item(i).getFirstChild().getNodeValue();
            dataUrl2[i] = nodeUrl2.item(i).getFirstChild().getNodeValue();
            dataUrl3[i] = nodeUrl3.item(i).getFirstChild().getNodeValue();
            dataUrl4[i] = nodeUrl4.item(i).getFirstChild().getNodeValue();
        }
%>
<%--
<b> 검색결과 - 검색 지역 : ${searchWord}</b><p>

        <%
        for(int i = 0 ; i < nodeUrl.getLength() ; i++){
            if(dataUrl[i] != null){
%>
    <b><%=dataUrl[i]%> <%=dataUrl2[i]%></b><p>
    현재시각[<%=dataUrl4[i]%>] : 현재 통합 대기 환경 등급 - <%=dataUrl3[i]%><p>
        <%}
%>

        <%
        }
    } catch(Exception e) {
        throw e;
    }
%>--%>

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
                <article>
                    <br><br>
                    <b> 검색결과 - 검색 지역 : ${searchWord}</b><p>

                        <%
        for(int i = 0 ; i < nodeUrl.getLength() ; i++){
            if(dataUrl[i] != null){
%>
                    <b><%=dataUrl[i]%> <%=dataUrl2[i]%></b><p>
                    현재시각[<%=dataUrl4[i]%>] : 현재 통합 대기 환경 등급 - <%=dataUrl3[i]%><p>
                        <%}
%>

                        <%
        }
    } catch(Exception e) {
        throw e;
    }
%>


    </article>
    </section>
    <footer id = "bottom">
        <h5>한국기술교육대학교 컴퓨터공학부</h5>
        <h5>Copyright (c) WebServiceComputing 우결팀</h5>
    </footer>
    </body>

    </html>