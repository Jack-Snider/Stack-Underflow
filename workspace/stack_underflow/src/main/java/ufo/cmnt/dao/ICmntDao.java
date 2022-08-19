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
	
	
	/**
	 * 댓글 번호가 n인 댓글을 수정하기
	 * @param cmntVo
	 * @return
	 */
	public int updateCmnt( CmntVO cmntVo );
	
	/**
	 * 댓글 번호가 n인 댓글을 지우기
	 * @param cmntVo
	 * @return
	 */
	public int deleteCmnt( CmntVO cmntVo );
	
	/**
	 * 댓글 번호가 n인 댓글을 가져오기
	 * @param cmntNum
	 * @return
	 */
	public CmntVO getSingleCmnt( int cmntNum );
	
	
	
	
	/* Jack Snider 끝 */
	
}
