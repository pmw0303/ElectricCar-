<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%> 
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int s = 1;
int e = 2000;

URL url = new URL("https://api.odcloud.kr/api/uws/v1/inventory?page=" + s + "&perPage=" + e
		+ "&serviceKey=PGVtm4jDhZvj1x1LQZQ902znlkuU1SXojUN4uaP6VAATxh562RB%2Bsk5W6obsub4hCwvKxyPG29sb7y1mrxZKTA%3D%3D");

BufferedReader bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
String rs = bf.readLine();
JSONParser jsonParser = new JSONParser();
JSONObject jsonObject = (JSONObject) jsonParser.parse(rs);
JSONArray jsonArray = (JSONArray) jsonObject.get("data");

String code = request.getParameter("code");

/* String name = "";
String addr="";
String lng="";
String lat=""; */
double dist=0;


double lat1 = Double.parseDouble(request.getParameter("lat"));  // 위도 
double lon1 = Double.parseDouble(request.getParameter("lon"));  // 경도 



/* double lat2=  37.501025;
double lon2=  127.037701; */
double lat2= 0;
double lon2= 0;
String name = "";
String tel="";
String inventory="";
String addr="";
String price="";

///

		JSONArray near_array = new JSONArray(); // 요소수 주소
		
		String string = null;
		ArrayList<String> arrayList = new ArrayList<>();
		
		for (int i = 0; i <jsonArray.size(); i++) {
			JSONObject content = (JSONObject) jsonArray.get(i); 
		
			 	 lat2 = Double.parseDouble(content.get("lat").toString());
				 lon2 = Double.parseDouble(content.get("lng").toString()); 
				   		 double theta = lon1 - lon2;
				        dist = Math.sin((lat1 * Math.PI / 180.0)) *
				        		Math.sin((lat2 * Math.PI / 180.0)) + 
				        		Math.cos((lat1 * Math.PI / 180.0)) *
				        		Math.cos((lat2 * Math.PI / 180.0)) *
				        		Math.cos((theta * Math.PI / 180.0));
				        dist = Math.acos(dist);
				        dist = (dist * Math.PI / 180.0);
				        dist = dist * 60*1.1515*1609.344;
				if( dist < 3  ){
					 //System.out.println( content.get("addr").toString() ); 
					 string = content.get("name").toString() + "/"+
							 content.get("addr").toString() +"/"+
							 content.get("tel").toString() +"/"+
							 content.get("inventory").toString() +"/"+
							 content.get("price").toString() +"/"+
							 content.get("lat").toString() +"/"+
							 content.get("lng").toString();
					arrayList.add(string);
				}
				
				
				
		 }
		
%>

<%=arrayList %>
