<%@ page import = "javax.xml.parsers.*,org.w3c.dom.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
    try {
        String jsp = (String)request.getAttribute("searchWord");
        System.out.println(jsp + "sdkfosdf");
        String strUrl = "http://openAPI.seoul.go.kr:8088/735a6a464573696e3130345466507167/xml/SearchParkInformationByAddressService/1/5/" + URLEncoder.encode(jsp, "UTF-8");
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(strUrl);

        NodeList nodeUrl    = document.getElementsByTagName("P_PARK");
        NodeList nodeUrl2    = document.getElementsByTagName("P_LIST_CONTENT");
        NodeList nodeUrl3    = document.getElementsByTagName("P_ADDR");

        String dataUrl[] = new String[nodeUrl.getLength()];
        String dataUrl2[] = new String[nodeUrl.getLength()];
        String dataUrl3[] = new String[nodeUrl.getLength()];

        for(int i = 0 ; i < nodeUrl.getLength() ; i++){
            dataUrl[i] = nodeUrl.item(i).getFirstChild().getNodeValue();
            dataUrl2[i] = nodeUrl2.item(i).getFirstChild().getNodeValue();
            dataUrl3[i] = nodeUrl3.item(i).getFirstChild().getNodeValue();
        }

%>
<%--
<b> 검색결과 - 검색 지역 : ${searchWord}</b><p>

        <%
        for(int i = 0 ; i < nodeUrl.getLength() ; i++){
%>
    <b><%=i+1%>. <%=dataUrl[i]%></b><p>
    <b>공원설명</b> - <%=dataUrl2[i]%><p>
    <b>공원주소</b> - <%=dataUrl3[i]%> <br><br>
        <%}
%>

<%
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
%>
            <b><%=i+1%>. <%=dataUrl[i]%></b><p>
            <b>공원설명</b> - <%=dataUrl2[i]%><p>
            <b>공원주소</b> - <%=dataUrl3[i]%> <br><br>
                <%}
%>

                <%
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
