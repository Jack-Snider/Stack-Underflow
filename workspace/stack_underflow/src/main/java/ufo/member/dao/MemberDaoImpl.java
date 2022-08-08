package ufo.member.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import ufo.util.SqlMapClientFactory;
import ufo.vo.FilesVO;
import ufo.vo.MemberVO;

public class MemberDaoImpl implements IMemberDao{

	private SqlMapClient smc;
	
	private static IMemberDao dao;
	
	private MemberDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
		}
	
	public static IMemberDao getInstance() {
		if(dao == null) dao = new MemberDaoImpl();
		return dao;
	}
	
	@Override
	public int insertMember(MemberVO memVo) {
		int cnt = 0;
		try {
			if(smc.insert("member.insertMember", memVo) == null) cnt = 1;
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int insertFile( FilesVO fileVo ) {
		// TODO Auto-generated method stub
		
		int cnt = 0;
		try {
			if( smc.insert( "member.insertFiles", fileVo ) == null ) cnt = 1;
		} catch (SQLException e) {
			// TODO: handle exception
			cnt = 0;
			e.printStackTrace();
		}
		
		return cnt;
	}

	/**
	 * FileVO객체 반환
	 */
	@Override
	public FilesVO selectFile(String mem_id) {
		// TODO Auto-generated method stub
		
		FilesVO filesVo = null;
		
		try {
			filesVo = (FilesVO)smc.queryForObject("member.getFileNum", mem_id);
		} catch (SQLException e) {
			// TODO: handle exception
			filesVo = null;
			e.printStackTrace();
		}
		
		return filesVo;
	}
	
	
	
	
	
	

}
