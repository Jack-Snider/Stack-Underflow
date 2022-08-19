package ufo.cmnt.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ufo.post.dao.IPostDao;
import ufo.post.dao.PostDaoImpl;
import ufo.util.SqlMapClientFactory;
import ufo.vo.CmntVO;
import ufo.vo.PostVO;

public class CmntDaoImpl implements ICmntDao{

	/* Jack Snider 시작 */
	

	private SqlMapClient smc;

	private static ICmntDao dao;

	private CmntDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}

	public static ICmntDao getInstance() {
		if (dao == null)
			dao = new CmntDaoImpl();
		return dao;
	}
	
	// 댓글 저장
	@Override
	public int insertCmnt(CmntVO cmntVo) {
		
		int cnt = 0;
		
		try {
			if( smc.insert( "cmnt.insertCmnt", cmntVo ) == null ) cnt = 1;
		} catch (Exception e) {
			// TODO: handle exception
			cnt = 0;
			e.printStackTrace();
		}
		
		return cnt;
	
	}
	
	
	@Override
	public List<CmntVO> getCmnts( String postNum ) {
		// TODO Auto-generated method stub
		List<CmntVO> list = null;
		try {
			list = smc.queryForList("cmnt.getCmnts", postNum);
		} catch (SQLException e) {
			// TODO: handle exception
			list = null;
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 댓글 번호가 n인 댓글을 수정
	 */
	@Override
	public int updateCmnt(CmntVO cmntVo) {
		
		int cnt = 0;
		try {
			cnt = smc.update("cmnt.updateCmnt", cmntVo);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	/**
	 * 댓글 번호가 n인 댓글 가져오기
	 */
	@Override
	public CmntVO getSingleCmnt( int cmntNum ) {
		
		CmntVO cmntVo = null;
		
		try {
			cmntVo = (CmntVO) smc.queryForObject( "cmnt.getSingleCmnt" , cmntNum);
		} catch (Exception e) {
			cmntVo = null;
			e.printStackTrace();
		}
		
		return cmntVo;
	}

	/**
	 * 댓글 번호가 n인 댓글 지우기
	 */
	@Override
	public int deleteCmnt(CmntVO cmntVo) {
		
		int cnt = 0;
		try {
			cnt = smc.delete( "cmnt.deleteCmnt", cmntVo );
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	
	
	/* Jack Snider 끝 */

	
}
	
