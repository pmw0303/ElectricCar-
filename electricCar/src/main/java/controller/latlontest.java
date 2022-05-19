package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.json.JSONArray;
import org.json.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Servlet implementation class latlontest
 */
@WebServlet("/web/assets/view/latlontest")
public class latlontest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public latlontest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    private String getTagValue(String tag, Element eElement) {
        NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
        Node nValue = (Node) nlList.item(0);
        if(nValue == null) 
            return null;
        return nValue.getNodeValue();
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 try{
	      
			String url = "http://apis.data.go.kr/B552584/EvCharger/getChargerInfo?serviceKey=mnUlBGGUwAhkbrePB0BjlD4C6IgJBf%2BnggDmp4B%2F75ZYKBpXRAEkpYE5PTjpa0I4SQ9Dks5%2FJkyd56nSL75%2B0Q%3D%3D&pageNo="+1+"&numOfRows=500&zcode=41";
	        
	        DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
	        DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
	        Document doc = dBuilder.parse(url);
	        // root tag 
            doc.getDocumentElement().normalize();
            System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
        
            NodeList nList = doc.getElementsByTagName("item");
            System.out.println("파싱할 리스트 수 : "+ nList.getLength());
            
            JSONArray jsonArray = new JSONArray();
            JSONObject object = new JSONObject();
            
            for(int temp = 0; temp < nList.getLength(); temp++){
                Node nNode = nList.item(temp);
                if(nNode.getNodeType() == Node.ELEMENT_NODE){
                   
                   Element eElement = (Element) nNode;
    
                   JSONObject jsonObject = new JSONObject();
                   jsonObject.put(   "lat"   ,   getTagValue("lat", eElement)   );
                   jsonObject.put(    "lng"  ,   getTagValue("lng", eElement)   );
                   jsonObject.put(    "statId"  ,   getTagValue("statId", eElement)   );
                   System.out.println("사용시간 : " + getTagValue("statId", eElement));
                   //System.out.println(eElement.getTextContent());
                   
                   jsonArray.put( jsonObject );
                   
                }   // for end
             }   // if end
       

            	
            
            
            	object.put(  "positions"   , jsonArray);
            
		         // 1. 응답객체내 한글 인코딩 타입설정 
				response.setCharacterEncoding("UTF-8");
				// *** 2. 응답객체의 자료형 [ 문자열 -> json 형식 ] 
				response.setContentType("application/json");
				// 3. 응답전송 
				response.getWriter().print( object );
            
      } catch (Exception e){   
         System.out.println("오류" + e);
      }   // try~catch end
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
