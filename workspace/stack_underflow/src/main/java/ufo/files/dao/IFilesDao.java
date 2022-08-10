package ufo.files.dao;

import ufo.vo.FilesVO;

public interface IFilesDao {
	public int insertFiles(FilesVO fvo);
	public int getFileNumByMemId (String memId);
}
