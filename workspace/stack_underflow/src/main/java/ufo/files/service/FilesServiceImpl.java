package ufo.files.service;

import ufo.files.dao.FilesDaoImpl;
import ufo.files.dao.IFilesDao;
import ufo.vo.FilesVO;

public class FilesServiceImpl implements IFilesService{
	
	private IFilesDao dao;
	
	private static IFilesService service;
	
	private FilesServiceImpl() {
		dao = FilesDaoImpl.getInstance();
	}
	
	public static IFilesService getInstance() {
		if(service == null) service = new FilesServiceImpl();
		return service;
	}
	
	@Override
	public int insertFiles(FilesVO fvo) {
		return dao.insertFiles(fvo);
	}

	
	/* Jack Snider 시작 */
	// 파일 가져오기
	@Override
	public FilesVO getFile( int fileNo ) {
		// TODO Auto-generated method stub
		return dao.getFile( fileNo );
	}
	/* Jack Snider 끝 */

}
