<%@ page import = "javax.xml.parsers.*,org.w3c.dom.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

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