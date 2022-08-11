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

}
