package ufo.cmnt.service;

import ufo.cmnt.dao.CmntDaoImpl;
import ufo.cmnt.dao.ICmntDao;
import ufo.post.dao.IPostDao;
import ufo.post.dao.PostDaoImpl;
import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.CmntVO;
import ufo.vo.PostVO;

public class CmntServiceImpl implements ICmntService {

	/* Jack Snider 시작 */
	
	private ICmntDao dao;

	private static ICmntService service;

	private CmntServiceImpl() {
		dao = CmntDaoImpl.getInstance();
	}

	public static ICmntService getInstance() {
		if ( service == null )
			service = new CmntServiceImpl();
		return service;
	}

	// 댓글등록
	@Override
	public int insertCmnt( CmntVO cmntVo ) {
		// TODO Auto-generated method stub
		return dao.insertCmnt( cmntVo );
	}

	
	/* Jack Snider 끝 */
}
