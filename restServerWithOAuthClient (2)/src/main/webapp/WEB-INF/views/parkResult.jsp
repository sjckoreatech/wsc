<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "javax.xml.parsers.*,org.w3c.dom.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
    try {

        /*String dataUrl[] = {};
        String dataUrl2[] = {};
        String dataUrl3[] = {};*/
        int count = 0 ;

        String jsp = (String)request.getAttribute("searchWord");
        System.out.println(jsp + "sdkfosdf");
        String strUrl = "http://openAPI.seoul.go.kr:8088/735a6a464573696e3130345466507167/xml/SearchParkInformationByAddressService/1/5/" + URLEncoder.encode(jsp, "UTF-8");
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(strUrl);

        NodeList nodeUrl    = document.getElementsByTagName("P_PARK");
        NodeList nodeUrl2    = document.getElementsByTagName("P_LIST_CONTENT");
        NodeList nodeUrl3    = document.getElementsByTagName("P_ADDR");

        /*for(int i = 0; i < 500 ; i++){
            if(nodeUrl.item(i).getFirstChild().getNodeValue() != null){
                count++;
            }
            else break;
        }

        for(int i = 0 ; i < count ; i++){
            dataUrl[i] = nodeUrl.item(i).getFirstChild().getNodeValue();
            dataUrl2[i] = nodeUrl2.item(i).getFirstChild().getNodeValue();
            dataUrl3[i] = nodeUrl3.item(i).getFirstChild().getNodeValue();
        }*/

        String dataUrl = nodeUrl.item(0).getFirstChild().getNodeValue();
        String dataUrl2 = nodeUrl.item(1).getFirstChild().getNodeValue();
        String dataUrl3 = nodeUrl.item(2).getFirstChild().getNodeValue();
        int temp = nodeUrl.getLength();


%>

<%=dataUrl%> <%=dataUrl2%> <%=dataUrl3%> <%=temp%>

<%--<c:forEach var="i" begin="0" end="<%=dataUrl.length%>" step="1">

    <b>공원명</b> - <%=dataUrl[i]%><p>
    <b>공원 설명</b> - <%=dataUrl2%><p>
    <b>공원 주소</b> - <%=dataUrl3%>

    ${item.title}, ${item.authorT} ${item.pubDate}<br/><br/>
</c:forEach>--%>

<%
    } catch(Exception e) {
        throw e;
    }
%>