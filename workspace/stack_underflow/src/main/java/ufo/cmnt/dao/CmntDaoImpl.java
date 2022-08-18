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
			cnt = smc.update( "cmnt.insertCmnt", cmntVo );
		} catch (Exception e) {
			// TODO: handle exception
			cnt = 0;
			e.printStackTrace();
		}
		
		return cnt;
	
	}
	
	
	@Override
	public List<CmntVO> getCmnts(int postNum) {
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
	
	/* Jack Snider 끝 */

	
}
	
