package ufo.vo;

public class FilesVO {

	private int file_num; // 파일번호
	private String file_name; // 파일 이름
	private String file_ext; // 파일 확장자명
	private long file_size; // 파일 사이즈
	private String file_etc; // 파일 비고
	private String mem_id;
	
	public int getFile_num() {
		return file_num;
	}
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_ext() {
		return file_ext;
	}
	public void setFile_ext(String file_ext) {
		this.file_ext = file_ext;
	}
	public long getFile_size() {
		return file_size;
	}
	public void setFile_size(long file_size) {
		this.file_size = file_size;
	}
	public String getFile_etc() {
		return file_etc;
	}
	public void setFile_etc(String file_etc) {
		this.file_etc = file_etc;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
}
