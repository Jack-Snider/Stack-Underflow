package ufo.vo;

import java.io.Serializable;

public class CmntVO  implements Serializable{

	private int cmnt_num; // 댓글번호
	private String cmnt_date; // 댓글작성일 ( DATE타입 )
	private String cmnt_udt_date; // 댓글수정일 ( DATE타입 )
	private String cmnt_cont; // 댓글내용
	private int cmnt_like; // 댓글좋아요 수
	private int cmnt_dislike; // 댓글싫어요 수
	private int post_num; // 게시글 번호
	private String mem_id; // 회원아이디
	
	
	public int getCmnt_num() {
		return cmnt_num;
	}
	public void setCmnt_num(int cmnt_num) {
		this.cmnt_num = cmnt_num;
	}
	public String getCmnt_date() {
		return cmnt_date;
	}
	public void setCmnt_date(String cmnt_date) {
		this.cmnt_date = cmnt_date;
	}
	public String getCmnt_udt_date() {
		return cmnt_udt_date;
	}
	public void setCmnt_udt_date(String cmnt_udt_date) {
		this.cmnt_udt_date = cmnt_udt_date;
	}
	public String getCmnt_cont() {
		return cmnt_cont;
	}
	public void setCmnt_cont(String cmnt_cont) {
		this.cmnt_cont = cmnt_cont;
	}
	public int getCmnt_like() {
		return cmnt_like;
	}
	public void setCmnt_like(int cmnt_like) {
		this.cmnt_like = cmnt_like;
	}
	public int getCmnt_dislike() {
		return cmnt_dislike;
	}
	public void setCmnt_dislike(int cmnt_dislike) {
		this.cmnt_dislike = cmnt_dislike;
	}
	public int getPost_num() {
		return post_num;
	}
	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
	
}
