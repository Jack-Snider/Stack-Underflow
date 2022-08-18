package ufo.cmnt.service;

import ufo.vo.CmntVO;

public interface ICmntService {
	
	/* Jack Snider 시작 */
	
	/**
	 * 댓글 저장
	 * @param cmntVo
	 * @return
	 */
	public int insertCmnt( CmntVO cmntVo );
	
	/* Jack Snider 끝 */
	
}
