package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Servlet implementation class circle
 */
@WebServlet("/circle")
public class circle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public circle() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			
			String code = request.getParameter("code");
			String name = "";
			String tel="";
			String inventory="";
			String addr="";
			String price="";
					URL url = new URL("https://api.odcloud.kr/api/uws/v1/inventory?page=" + 0 + "&perPage=" + 2000
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
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
