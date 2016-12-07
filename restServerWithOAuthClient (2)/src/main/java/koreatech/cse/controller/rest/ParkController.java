package koreatech.cse.controller.rest;

import koreatech.cse.domain.park.Row;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

/**
 * Created by B318EA46 on 2016-12-06.
 */

@Controller
@RequestMapping("/pc")
public class ParkController {

    private static String getUrlSource(String url) throws IOException {
        URL yahoo = new URL(url);
        URLConnection yc = yahoo.openConnection();
        BufferedReader in = new BufferedReader(new InputStreamReader(
                yc.getInputStream(), "UTF-8"));
        String inputLine;
        StringBuilder a = new StringBuilder();
        while ((inputLine = in.readLine()) != null)
            a.append(inputLine);
        in.close();

        return a.toString();
    }

    @RequestMapping("/park")
    private String park(){
        return "park";
    }

    @RequestMapping("/parkResult")
    public String parkResult(Model model,
                             @RequestParam(name = "searchWord") String searchWord) {
        System.out.println(searchWord);
        RestTemplate restTemplate = new RestTemplate();
        Row row = null;
        try {

            String source =getUrlSource("http://openAPI.seoul.go.kr:8088/735a6a464573696e3130345466507167/xml/SearchParkInformationByAddressService/1/5/" + URLEncoder.encode(searchWord, "UTF-8"));
            System.out.println(source);
/*

            try {
                File file = new File("http://openAPI.seoul.go.kr:8088/735a6a464573696e3130345466507167/xml/SearchParkInformationByAddressService/1/5/" + searchWord);
                DocumentBuilderFactory docBuildFact = DocumentBuilderFactory.newInstance();
                DocumentBuilder docBuild = docBuildFact.newDocumentBuilder();
                Document doc = docBuild.parse(file);
                doc.getDocumentElement().normalize();

                System.out.println("Root element : " + doc.getDocumentElement().getNodeName());
                System.out.println();

                // person엘리먼트 리스트
                NodeList personlist = doc.getElementsByTagName("row");

                for (int i = 0; i < personlist.getLength(); i++) {

                    System.out.println("---------- rowNode "+ i + "번째 ------------------");

                    Node personNode = personlist.item(i);

                    if (personNode.getNodeType() == Node.ELEMENT_NODE) {
                        // person엘리먼트
                        Element personElmnt = (Element) personNode;

                        // name 태그
                        NodeList nameList= personElmnt.getElementsByTagName("P_PARK");
                        Element nameElmnt = (Element) nameList.item(0);
                        Node name = nameElmnt.getFirstChild();
                        System.out.println("name    : " + name.getNodeValue());

                        // tel 태그
                        NodeList telList= personElmnt.getElementsByTagName("P_ADDR");
                        Element telElmnt = (Element) telList.item(0);
                        Node tel = telElmnt.getFirstChild();
                        System.out.println("tel     : " + tel.getNodeValue());

                        */
/*//*
/ address 태그
                        NodeList addressList= personElmnt.getElementsByTagName("address");
                        Element addressElmnt = (Element) addressList.item(0);
                        Node address = addressElmnt.getFirstChild();
                        System.out.println("address : " + address.getNodeValue());*//*

                    }

                    System.out.println("---------------------------------------------");
                    System.out.println();
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
*/

            System.out.println("sodfksodkfsodf");
        } catch (HttpClientErrorException e) {
            System.out.println(e.getStatusCode() + ": " + e.getStatusText());
        } catch(IOException e){
            System.out.println(e);
        }
        model.addAttribute("searchWord", searchWord);
        return "parkResult";
    }
}
