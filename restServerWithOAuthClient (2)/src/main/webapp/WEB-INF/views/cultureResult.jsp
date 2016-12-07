<%@ page import = "javax.xml.parsers.*,org.w3c.dom.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

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

%>

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