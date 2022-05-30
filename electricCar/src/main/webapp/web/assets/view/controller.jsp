<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String code = request.getParameter("code");
String name = "";
String tel="";
String inventory="";
String addr="";
String price="";
		URL url = new URL("https://api.odcloud.kr/api/uws/v1/inventory?page=" + 1 + "&perPage=" + 2000
				+ "&serviceKey=PGVtm4jDhZvj1x1LQZQ902znlkuU1SXojUN4uaP6VAATxh562RB%2Bsk5W6obsub4hCwvKxyPG29sb7y1mrxZKTA%3D%3D");
		
		BufferedReader bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
		
		String result = bf.readLine();
		
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
		
		
		JSONArray jsonArray = (JSONArray) jsonObject.get("data");
		
		JSONArray cartegory_array = new JSONArray();
	
		
		for (int i = 0; i < jsonArray.size(); i++) {
			JSONObject content = (JSONObject) jsonArray.get(i);
			if( content.get("code").toString().equals(code) ){
				
						
				name = content.get("name").toString();
				addr = content.get("addr").toString();
				tel = content.get("tel").toString();
				inventory= content.get("inventory").toString();
				price = content.get("price").toString();
				
				
		}}

%>

<div style="padding:10px; width:450px; height:140px;">
<span> 상호명 : <%=name %></span><br>
<span> 주유소 주소 : <%=addr %></span><br>
<span> 주유소 번호 : <%=tel %></span><br>
<span> 요소수 재고량 : <%=inventory %></span><br>
<span> 요소수 가격 : <%=price %></span><br>
</div>