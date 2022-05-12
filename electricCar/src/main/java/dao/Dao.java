package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// dao : DB 접근객체
public class Dao {
	protected Connection con;	// db연결 클래스 
	protected PreparedStatement ps;  // db조작 인터페이스
	protected ResultSet rs; // db결과 인터페이스
	
	public Dao() {
			// jdbc 
			// 1. 프로젝트내 build path 에 mysqljdbc.jar 추가
			// 2. 프로젝트내 webapp -> web-inf-lib -> mysqljdbc.jar 추가
		// 1. db 서버 연동 
		try { // 예외처리 => 자바외 외부통신할때 : 일반예외가 무조건 발생 
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elecro?serverTimezone=UTC",
					"root","1234");
			System.out.println("jspweb 연동 성공 ");
		}catch(Exception e ){ System.out.println("연동 실패 ");}
	}
	
	
}