package ufo.vo;

public class ChatVO {
	
	private int chat_room_num;
	private String chat_room_nm;
	private String chat_crt_date; // DATE 타입
	private String mem_id;
	
	public int getChat_room_num() {
		return chat_room_num;
	}
	public void setChat_room_num(int chat_room_num) {
		this.chat_room_num = chat_room_num;
	}
	public String getChat_room_nm() {
		return chat_room_nm;
	}
	public void setChat_room_nm(String chat_room_nm) {
		this.chat_room_nm = chat_room_nm;
	}
	public String getChat_crt_date() {
		return chat_crt_date;
	}
	public void setChat_crt_date(String chat_crt_date) {
		this.chat_crt_date = chat_crt_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
}
