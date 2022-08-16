package ufo.post.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ufo.util.SqlMapClientFactory;
import ufo.vo.PostVO;

public class PostDaoImpl implements IPostDao {

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
		
		
		/*
		List<ProdVO> list = null; // 변수선언

		try {
			list = smc.queryForList("prod.selectAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // 실행

		return list; // 리턴
		*/
		
		
		
	}

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return 0;
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



}
