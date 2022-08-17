package ufo.cmnt.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

import ufo.post.dao.IPostDao;
import ufo.post.dao.PostDaoImpl;
import ufo.util.SqlMapClientFactory;
import ufo.vo.CmntVO;

public class CmntDaoImpl implements ICmntDao{

	/* Jack Snider 시작 */

	private SqlMapClient smc;

	private static ICmntDao dao;

	private CmntDaoImpl() {
		//smc = SqlMapClientFactory.getSqlMapClient();
		smc = SqlMapClientFactory.getSqlMapClient();
	}

	public static ICmntDao getInstance() {
		if (dao == null)
			dao = new CmntDaoImpl();
		return dao;
	}
	
	
	/**
	 * 댓글 등록
	 */
	@Override
	public int insertCmnt(CmntVO cmntVo) {
		
		int cnt = 0;
		try {
			if(smc.insert("cmnt.insertCmnt", cmntVo) == null) cnt = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	/* Jack Snider 끝 */

}
