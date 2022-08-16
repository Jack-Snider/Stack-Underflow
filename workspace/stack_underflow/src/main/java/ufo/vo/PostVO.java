package ufo.vo;

public class PostVO {
	
	/* Jack Snider 시작 */
	
	private int post_num; // 게시글 번호
	private String post_title; // 게시글 제목
	private String post_cont; // 게시글 내용
	private String post_reg_date; // 게시글 작성일 ( DATE 타입 )
	private int post_views; // 게시글 조회수
	private int post_like; // 게시글 좋아요 수
	private int post_dislike; // 게시글 싫어요 수
	private String post_udt_date; // 게시글 수정일 ( DATE 타입 )
	private int file_num; // 파일 번호 ( 게시글에 등록할 파일 )
	private String mem_id; // 회원 아이디 ( 게시글 작성자 )
	private String post_board_type; // 게시글 유형 ( 기술, 자유, 문의 )
	
	public int getPost_num() {
		return post_num;
	}
	
	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}
	
	public String getPost_title() {
		return post_title;
	}
	
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	
	public String getPost_cont() {
		return post_cont;
	}
	
	public void setPost_cont(String post_cont) {
		this.post_cont = post_cont;
	}
	
	public String getPost_reg_date() {
		return post_reg_date;
	}
	
	public void setPost_reg_date(String post_reg_date) {
		this.post_reg_date = post_reg_date;
	}
	
	public int getPost_views() {
		return post_views;
	}

	public void setPost_views(int post_views) {
		this.post_views = post_views;
	}
	
	
	public int getPost_like() {
		return post_like;
	}
	
	public void setPost_like(int post_like) {
		this.post_like = post_like;
	}
	
	public int getPost_dislike() {
		return post_dislike;
	}
	
	public void setPost_dislike(int post_dislike) {
		this.post_dislike = post_dislike;
	}
	
	public String getPost_udt_date() {
		return post_udt_date;
	}
	
	public void setPost_udt_date(String post_udt_date) {
		this.post_udt_date = post_udt_date;
	}
	
	public int getFile_num() {
		return file_num;
	}
	
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	
	public String getMem_id() {
		return mem_id;
	}
	
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	public String getPost_board_type() {
		return post_board_type;
	}
	
	public void setPost_board_type(String post_board_type) {
		this.post_board_type = post_board_type;
	}
	
	
	/* Jack Snider 시작 */
	
	
}
