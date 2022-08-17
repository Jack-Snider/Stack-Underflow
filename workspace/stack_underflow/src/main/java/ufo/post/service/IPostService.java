package ufo.post.service;

import java.util.List;
import java.util.Map;

import ufo.vo.PageVO;
import ufo.vo.PostVO;

public interface IPostService {
	
	/* Jack Snider 시작 */

	/**
	 * 
	 * 매개변수 : PostVO 객체
	 * 
	 * @param post
	 * @return 삽입 성공시 : 1, 실패시 : 0
	 */
	public int insertPost(PostVO post);

	/**
	 * 사용자가 작성한 특정 게시글 1개 반환
	 * 
	 * @param mem_id
	 * @return Post객체
	 */
	//public PostVO getUserPost(String post_etc);

	/**
	 * 사용자가 작성한 모든 게시글 반환
	 * 
	 * @param mem_id
	 * @return
	 */
	public List<PostVO> getUserPostAll(String mem_id);
	
	
	/**
	 * 
	 * @param map
	 * @return
	 */
	public int selectCount();
	
	/**
	 * 모든 게시글 가져오기
	 * @return
	 */
	public List<PostVO> getAllPost();
	
	/**
	 * 게시글 목록에서 특정 게시글 상세보기
	 * @param postNum
	 * @return PostVO
	 */
	public PostVO getDetailPost( int postNum );
	
	public int increaseLike( int postNum );
	public int increaseDislike( int postNum );
	public int increaseViews( int postNum );
	
	/* Jack Snider 시작 */
	
	/* 호겸 시작 */
	// 게시글 전체 갯수 가져오기
	public int totalCount();
	// 전체 페이지 수 가져오기
	public int totalPage();
	// 페이지 정보 가져오기
	public PageVO pageInfo(int cpage);
	// 페이지 별 게시글 가져오기
	public List<PostVO> getPostPerPage(Map<String, Object> map);
	/* 호겸 끝 */
}
