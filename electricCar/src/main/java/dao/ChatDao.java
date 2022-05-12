package dao;

import dto.Chatting;

public class ChatDao extends Dao{
	
	public ChatDao() {
		super();
	}
	public static ChatDao chatDao = new ChatDao();
	public static ChatDao getchatDao = new ChatDao();
	
	public boolean sendmsg(Chatting chat) {
		try {
			String sql = "insert into chatting (nickname,chatting) values (?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, chat.getNickname());
			ps.setString(2, chat.getChatting());
			ps.executeUpdate();
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public String receivemsg(){
		try {
			String chatting = null;
			String sql = "select * from chatting";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				chatting += rs.getString(2)+":"+rs.getString(3)+",";
				
			}
			return chatting;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
