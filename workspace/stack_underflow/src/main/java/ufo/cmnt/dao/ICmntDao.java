package ufo.cmnt.dao;

import java.util.List;

import ufo.vo.CmntVO;
import ufo.vo.PostVO;

public interface ICmntDao {

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
	public List<CmntVO> getCmnts(String postNum);
	
	/* Jack Snider 끝 */
	
}
