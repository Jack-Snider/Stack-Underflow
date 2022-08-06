package ufo.vo;

public class MngVO {

	private String mem_id; // 회원아이디
	private String admin_id; // 관리자 아이디
	private String mng_type_cd; // 관리유형코드 ( 퇴출인지, 경고인지 등등... )
	private String mng_date; // 관리일자 ( DATE타입 )
	private String mng_trg; // 관리대상
	private String mng_cont; // 관리내용
	private String mng_cd; // 관리코드
	
	
	public String getMem_id() {
		return mem_id;
	}
	
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	public String getAdmin_id() {
		return admin_id;
	}
	
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	
	public String getMng_type_cd() {
		return mng_type_cd;
	}
	
	public void setMng_type_cd(String mng_type_cd) {
		this.mng_type_cd = mng_type_cd;
	}
	
	public String getMng_date() {
		return mng_date;
	}
	
	public void setMng_date(String mng_date) {
		this.mng_date = mng_date;
	}
	
	public String getMng_trg() {
		return mng_trg;
	}
	
	public void setMng_trg(String mng_trg) {
		this.mng_trg = mng_trg;
	}
	
	public String getMng_cont() {
		return mng_cont;
	}
	
	public void setMng_cont(String mng_cont) {
		this.mng_cont = mng_cont;
	}
	
	public String getMng_cd() {
		return mng_cd;
	}
	
	public void setMng_cd(String mng_cd) {
		this.mng_cd = mng_cd;
	}
	
	
	
	
}
