package ufo.files.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import ufo.util.SqlMapClientFactory;
import ufo.vo.FilesVO;

public class FilesDaoImpl implements IFilesDao{

	private SqlMapClient smc;
	
	private static FilesDaoImpl dao;
	
	private FilesDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IFilesDao getInstance() {
		if(dao == null) dao = new FilesDaoImpl();
		return dao;
	}
	
	@Override
	public int insertFiles(FilesVO fvo) {
		int cnt = 0;
		try {
			if(smc.insert("files.insertFiles", fvo) == null) cnt = 1;
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	/* Jack Snider 시작 */
	
	// 파일 가져오기
	@Override
	public FilesVO getFile( int fileNo ) {
		
		FilesVO file = null;
		try {
			file = (FilesVO) smc.queryForObject( "files.getFile" , fileNo );
		} catch (SQLException e) {
			// TODO: handle exception
			file = null;
			e.printStackTrace();
		}
		
		return file;
	}

	// 파일저장명으로 파일객체 가져오기
	@Override
	public FilesVO getFileBySaveName(String file_save_name) {
		FilesVO file = null;
		try {
			file = (FilesVO) smc.queryForObject( "files.getFileBySaveName" , file_save_name );
		} catch (SQLException e) {
			// TODO: handle exception
			file = null;
			e.printStackTrace();
		}
		
		return file;
	}

	/* Jack Snider 끝 */
	
}
