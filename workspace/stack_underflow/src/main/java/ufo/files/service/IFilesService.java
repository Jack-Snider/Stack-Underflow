package ufo.files.service;

import ufo.vo.FilesVO;

public interface IFilesService {
	public int insertFiles(FilesVO fvo);
	
	/* Jack Snider 시작 */
	
	// 파일 가져오기
	public FilesVO getFile( int fileNo );
	
	// 파일저장명으로 파일객체 가져오기
	public FilesVO getFileBySaveName( String file_save_name );

	
	/* Jack Snider 끝 */
	
}
