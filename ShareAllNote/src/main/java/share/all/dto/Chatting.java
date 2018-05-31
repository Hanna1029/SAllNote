package share.all.dto;

public class Chatting {
	
	private int chat_num; // 채팅방 번호
	private String chat_title; // 채팅방 제목
	private String chat_thema; // 채팅방 테마 색깔
	private int chat_max; //채팅방 접속 가능 인원 수 
	private int chat_count; // 현재 접속 가능 인원 수 -
	private int chat_secret; // 비밀방 여부
	private String chat_pwd; // 비밀방일 경우 패스워드
	private String chat_admin; // 채팅방 개설자
	//private int type_num; // 유형번호
	//private String chat_id; // 채팅방 참가회원(타입나중에알아서)
	public int getChat_num() {
		return chat_num;
	}
	public void setChat_num(int chat_num) {
		this.chat_num = chat_num;
	}
	public String getChat_title() {
		return chat_title;
	}
	public void setChat_title(String chat_title) {
		this.chat_title = chat_title;
	}
	public String getChat_thema() {
		return chat_thema;
	}
	public void setChat_thema(String chat_thema) {
		this.chat_thema = chat_thema;
	}
	public int getChat_max() {
		return chat_max;
	}
	public void setChat_max(int chat_max) {
		this.chat_max = chat_max;
	}
	public int getChat_count() {
		return chat_count;
	}
	public void setChat_count(int chat_count) {
		this.chat_count = chat_count;
	}
	public int getChat_secret() {
		return chat_secret;
	}
	public void setChat_secret(int chat_secret) {
		this.chat_secret = chat_secret;
	}
	public String getChat_pwd() {
		return chat_pwd;
	}
	public void setChat_pwd(String chat_pwd) {
		this.chat_pwd = chat_pwd;
	}
	public String getChat_admin() {
		return chat_admin;
	}
	public void setChat_admin(String chat_admin) {
		this.chat_admin = chat_admin;
	}
	
	  
	
	
	
}
