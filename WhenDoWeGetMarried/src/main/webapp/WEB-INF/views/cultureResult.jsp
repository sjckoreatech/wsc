<%@ page import = "javax.xml.parsers.*,org.w3c.dom.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
    try {
        String jsp = (String)request.getAttribute("searchWord");
        System.out.println(jsp + "qxwwce");
        String strUrl = "http://openapi.seoul.go.kr:8088/456c67657173696e37354441567243/xml/SebcArtGalleryKor/1/240/";
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(strUrl);

        NodeList nodeUrl    = document.getElementsByTagName("CATE3_NAME");
        NodeList nodeUrl2    = document.getElementsByTagName("NAME_KOR");
        NodeList nodeUrl3    = document.getElementsByTagName("H_KOR_CITY");
        NodeList nodeUrl4    = document.getElementsByTagName("H_KOR_GU");
        NodeList nodeUrl5    = document.getElementsByTagName("H_KOR_DONG");

        String dataUrl[] = new String[nodeUrl.getLength()];
        String dataUrl2[] = new String[nodeUrl.getLength()];
        String dataUrl3[] = new String[nodeUrl.getLength()];
        String dataUrl4[] = new String[nodeUrl.getLength()];
        String dataUrl5[] = new String[nodeUrl.getLength()];

        System.out.println(nodeUrl.getLength());

        int count = 0;

        for(int i = 0 ; i < nodeUrl.getLength() ; i++){
            if(jsp.equals(nodeUrl4.item(i).getFirstChild().getNodeValue()) || jsp.equals(nodeUrl5.item(i).getFirstChild().getNodeValue()) ) {
                System.out.println(jsp);
                System.out.println(nodeUrl4.item(i).getFirstChild().getNodeValue());
                dataUrl[count] = nodeUrl.item(i).getFirstChild().getNodeValue();
                dataUrl2[count] = nodeUrl2.item(i).getFirstChild().getNodeValue();
                dataUrl3[count] = nodeUrl3.item(i).getFirstChild().getNodeValue();
                dataUrl4[count] = nodeUrl4.item(i).getFirstChild().getNodeValue();
                dataUrl5[count] = nodeUrl5.item(i).getFirstChild().getNodeValue();
                count++;
            }
        }

%><%--

<b> 검색결과 - 검색 지역 : ${searchWord}</b><p>

        <%
        for(int i = 0 ; i < nodeUrl.getLength() ; i++){
            if(dataUrl[i] != null){
%>
    <b><%=i+1%>. <%=dataUrl2[i]%></b><p>
    <b>분류</b> - <%=dataUrl[i]%><p>
    <b>주소</b> - <%=dataUrl3[i]%> <%=dataUrl4[i]%> <%=dataUrl5[i]%><br><br>
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
            <b><%=i+1%>. <%=dataUrl2[i]%></b><p>
            <b>분류</b> - <%=dataUrl[i]%><p>
            <b>주소</b> - <%=dataUrl3[i]%> <%=dataUrl4[i]%> <%=dataUrl5[i]%><br><br>
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