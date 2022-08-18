package ufo.cmnt.service;

import java.util.List;

import ufo.vo.CmntVO;

public interface ICmntService {
	
	/* Jack Snider 시작 */
	
	/**
	 * 댓글 저장
	 * @param cmntVo
	 * @return
	 */
	public int insertCmnt( CmntVO cmntVo );
	
	/**
	 * 게시글 번호가 n인 댓글들 가져오기
	 * @param postNum
	 * @return
	 */
	public List<CmntVO> getCmnts( int postNum );
	
	/* Jack Snider 끝 */
	
}
