package ufo.vo;

public class MemberVO {

	private String mem_id; // 회원아이디
	private String mem_pass; // 사용자 비밀번호
	private String mem_nknm; // 사용자 닉네임
	private String mem_nm; // 사용자이름
	private String mem_regno; // 사용자 주민번호
	private String mem_email; // 사용자 이메일
	private String mem_addr1; // 사용자 주소
	private String mem_addr2; // 사용자 상세 주소
	private String mem_qstn; // 사용자 질문 ( 비번 찾기 위한 질문 )
	private String mem_ans; // 사용자 답변 ( 비번 찾기 위한 질문의 답변 )
	private String mem_snu_date; // 사용자 가입일 ( DATE 타입 ) Since ...
	private int mem_score; // 사용자 점수
	private String mem_rank; // 사용자 티어
	private int mem_stat; // 사용자 상태 ( 로그인 상태 : 1, 로그아웃 상태 : 0 )
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pass() {
		return mem_pass;
	}
	public void setMem_pass(String mem_pass) {
		this.mem_pass = mem_pass;
	}
	public String getMem_nknm() {
		return mem_nknm;
	}
	public void setMem_nknm(String mem_nknm) {
		this.mem_nknm = mem_nknm;
	}
	public String getMem_nm() {
		return mem_nm;
	}
	public void setMem_nm(String mem_nm) {
		this.mem_nm = mem_nm;
	}
	public String getMem_regno() {
		return mem_regno;
	}
	public void setMem_regno(String mem_regno) {
		this.mem_regno = mem_regno;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_addr1() {
		return mem_addr1;
	}
	public void setMem_addr1(String mem_addr1) {
		this.mem_addr1 = mem_addr1;
	}
	public String getMem_addr2() {
		return mem_addr2;
	}
	public void setMem_addr2(String mem_addr2) {
		this.mem_addr2 = mem_addr2;
	}
	public String getMem_qstn() {
		return mem_qstn;
	}
	public void setMem_qstn(String mem_qstn) {
		this.mem_qstn = mem_qstn;
	}
	public String getMem_ans() {
		return mem_ans;
	}
	public void setMem_ans(String mem_ans) {
		this.mem_ans = mem_ans;
	}
	public String getMem_snu_date() {
		return mem_snu_date;
	}
	public void setMem_snu_date(String mem_snu_date) {
		this.mem_snu_date = mem_snu_date;
	}
	public int getMem_stat() {
		return mem_stat;
	}
	public void setMem_stat(int mem_stat) {
		this.mem_stat = mem_stat;
	}
	public int getMem_score() {
		return mem_score;
	}
	public void setMem_score(int mem_score) {
		this.mem_score = mem_score;
	}
	public String getMem_rank() {
		return mem_rank;
	}
	public void setMem_rank(String mem_rank) {
		this.mem_rank = mem_rank;
	}
	
}
