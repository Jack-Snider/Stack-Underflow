package ufo.files.dao;

import ufo.vo.FilesVO;

public interface IFilesDao {
	public int insertFiles(FilesVO fvo);
	
	/* Jack Snider 시작 */
	
	// 파일 가져오기
	public FilesVO getFile( int fileNo );
	
	/* Jack Snider 끝 */
	
}
