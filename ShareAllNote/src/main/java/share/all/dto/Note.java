package share.all.dto;


public class Note {
	
	private int n_num; // 노트번호
	private String n_title; // 제목
	private String n_content; // 내용
	private String n_date; // 작성일자
	private int trash_chk; // 휴지통 여부
	private String id; // 작성자
	private String f_address; // 첨부파일 주소
	private String n_id; // 공유받은 아이디 필요하면 추후에 타입은 알아서
	public int getN_num() {
		return n_num;
	}
	public void setN_num(int n_num) {
		this.n_num = n_num;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public String getN_date() {
		return n_date;
	}
	public void setN_date(String n_date) {
		this.n_date = n_date;
	}
	public int getTrash_chk() {
		return trash_chk;
	}
	public void setTrash_chk(int trash_chk) {
		this.trash_chk = trash_chk;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getF_address() {
		return f_address;
	}
	public void setF_address(String f_address) {
		this.f_address = f_address;
	}
	public String getN_id() {
		return n_id;
	}
	public void setN_id(String n_id) {
		this.n_id = n_id;
	}
		

}
