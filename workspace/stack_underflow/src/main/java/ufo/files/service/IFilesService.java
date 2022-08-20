package ufo.files.service;

import ufo.vo.FilesVO;

public interface IFilesService {
	public int insertFiles(FilesVO fvo);
	
	/* Jack Snider 시작 */
	
	// 파일 가져오기
	public FilesVO getFile( int fileNo );
	
	/* Jack Snider 끝 */
	
}
