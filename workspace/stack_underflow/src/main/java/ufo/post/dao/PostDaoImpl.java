package ufo.post.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ufo.util.SqlMapClientFactory;
import ufo.vo.PageVO;
import ufo.vo.PostVO;

public class PostDaoImpl implements IPostDao {

	/* Jack Snider 시작 */
	
	private SqlMapClient smc;

	private static IPostDao dao;

	private PostDaoImpl() {
		//smc = SqlMapClientFactory.getSqlMapClient();
		smc = SqlMapClientFactory.getSqlMapClient();
	}

	public static IPostDao getInstance() {
		if (dao == null)
			dao = new PostDaoImpl();
		return dao;
	}

	/**
	 * 작성자 : Jack Snider
	 * 게시글정보 저장
	 */
	@Override
	public int insertPost(PostVO post) {
		// TODO Auto-generated method stub
		int cnt = 0;
		try {
			if(smc.insert("post.insertPost", post) == null) cnt = 1;
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	/**
	 * 작성자 : Jack Snider
	 * 사용자가 작성한 모든 게시글 반환
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<PostVO> getUserPostAll(String mem_id) {
		// TODO Auto-generated method stub
		List<PostVO> list = null;
		try {
			list = smc.queryForList("post.getUserPostAll");
		} catch (SQLException e) {
			// TODO: handle exception
			list = null;
			e.printStackTrace();
		}
		return list;
	
	}


	
	@Override
	public List<PostVO> getAllPost() {
		
		List<PostVO> list = null;
		
		try {
			
			list = smc.queryForList("post.getAllPost");				
			
		} catch (SQLException e) {
			// TODO: handle exception
			list = null;
			e.printStackTrace();
		}
		return list;
	}

	
	/**
	 * 게시글 목록에서 특정 게시글 상세보기
	 */
	@Override
	public PostVO getDetailPost(int postNum) {
		// TODO Auto-generated method stub
		
		
		PostVO postVo = null;
		
		try {
			postVo = (PostVO) smc.queryForObject("post.getPostDetail", postNum);
		} catch (SQLException e) {
			postVo = null;
			e.printStackTrace();
		}
		return postVo;
		
	}

	@Override
	public int increaseLike( int postNum ) { // 호겸 수정
		int cnt = 0;
		try {
			cnt = smc.update("post.increaseLike", postNum);
		} catch (Exception e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int increaseDislike( int postNum ) { // 호겸 수정
		int cnt = 0;
		try {
			cnt = smc.update("post.increaseDislike", postNum);
		} catch (Exception e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int increaseViews( int postNum ) { // 호겸 수정
		int cnt = 0;
		try {
			cnt = smc.update("post.increaseViews", postNum);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * 게시글 수정
	 */
	@Override
	public int updatePost( PostVO postVo ) {
		int cnt = 0;
		try {
			cnt = smc.update("post.updatePost", postVo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return cnt;
	}

	/**
	 * 게시글 삭제
	 */
	@Override
	public int deletePost(PostVO postVo) {
		int cnt = 0;
		try {
			cnt = smc.delete("post.deletePost", postVo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return cnt;
	}
	
	/* Jack Snider 끝 */
	
	/* 호겸 시작 */
	@Override
	public int totalCount(Map<String, Object> map) {
		int cnt = 0;
		try {
			cnt = (int)smc.queryForObject("post.totalCount", map);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public List<PostVO> getPostPerPage(Map<String, Object> map) {
		List<PostVO> list = null;
			try {
				list = smc.queryForList("post.getPostPerPage", map);
			} catch (SQLException e) {
				list = null;
				e.printStackTrace();
			}
		return list;
	}
	/* 호겸 끝 */


}
