package ufo.files.service;

import ufo.vo.FilesVO;

public interface IFilesService {
	public int insertFiles(FilesVO fvo);
	public int getFileNumByMemId (String memId);
}
