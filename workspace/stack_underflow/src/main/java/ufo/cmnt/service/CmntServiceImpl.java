package ufo.cmnt.service;

import java.util.List;

import ufo.cmnt.dao.CmntDaoImpl;
import ufo.cmnt.dao.ICmntDao;
import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.CmntVO;

public class CmntServiceImpl implements ICmntService {

	/* Jack Snider 시작 */
	
	private ICmntDao dao;

	private static ICmntService service;

	private CmntServiceImpl() {
		dao = CmntDaoImpl.getInstance();
	}

	public static ICmntService getInstance() {
		if (service == null)
			service = new CmntServiceImpl();
		return service;
	}
	
	// 댓글 저장
	@Override
	public int insertCmnt(CmntVO cmntVo) {
		// TODO Auto-generated method stub
		return dao.insertCmnt( cmntVo );
	}

	// 게시글 번호가 n인 댓글들 가져오기
	@Override
	public List<CmntVO> getCmnts(int postNum) {
		// TODO Auto-generated method stub
		return dao.getCmnts( postNum );
	}
	
	
	
	/* Jack Snider 끝 */

}
