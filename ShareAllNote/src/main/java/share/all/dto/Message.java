package share.all.dto;

import java.sql.Date;

public class Message {

	private int rownum; // 순번
	private int msg_num; // 쪽지번호
	private Date msg_date; // 보낸 일시 
	private String msg_title; // 쪽지 제목
	private String msg_content; // 쪽지 내용
	private String send_id; //  보낸이
	private String receive_id; // 받는이
	private int msg_status; // 쪽지 읽음 여부
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getMsg_num() {
		return msg_num;
	}
	public void setMsg_num(int msg_num) {
		this.msg_num = msg_num;
	}
	public Date getMsg_date() {
		return msg_date;
	}
	public void setMsg_date(Date msg_date) {
		this.msg_date = msg_date;
	}
	public String getMsg_title() {
		return msg_title;
	}
	public void setMsg_title(String msg_title) {
		this.msg_title = msg_title;
	}
	public String getMsg_content() {
		return msg_content;
	}
	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}
	public String getSend_id() {
		return send_id;
	}
	public void setSend_id(String send_id) {
		this.send_id = send_id;
	}
	public String getReceive_id() {
		return receive_id;
	}
	public void setReceive_id(String receive_id) {
		this.receive_id = receive_id;
	}
	public int getMsg_status() {
		return msg_status;
	}
	public void setMsg_status(int msg_status) {
		this.msg_status = msg_status;
	}
	
	
	
	
}
