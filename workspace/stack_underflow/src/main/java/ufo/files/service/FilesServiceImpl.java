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

	@Override
	public int getFileNumByMemId( String memId ) {
		return dao.getFileNumByMemId(memId);
	}
	
}
