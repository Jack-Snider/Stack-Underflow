package ufo.post.service;

import java.util.List;
import java.util.Map;

import ufo.post.dao.IPostDao;
import ufo.post.dao.PostDaoImpl;
import ufo.vo.PostVO;

public class PostServiceImpl implements IPostService {

	/* Jack Snider 시작 */
	
	private IPostDao dao;

	private static IPostService service;

	private PostServiceImpl() {
		dao = PostDaoImpl.getInstance();
	}

	public static IPostService getInstance() {
		if (service == null)
			service = new PostServiceImpl();
		return service;
	}

	@Override
	public int insertPost(PostVO post) {
		// TODO Auto-generated method stub
		return dao.insertPost(post);
	}

	@Override
	public List<PostVO> getUserPostAll(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getUserPostAll(mem_id);
	}

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return dao.selectCount();
	}

	@Override
	public List<PostVO> getAllPost() {
		// TODO Auto-generated method stub
		return dao.getAllPost();
	}

	@Override
	public PostVO getDetailPost(int postNum) {
		// TODO Auto-generated method stub
		return dao.getDetailPost(postNum);
	}

	@Override
	public int increaseLike( int postNum ) {
		// TODO Auto-generated method stub
		return dao.increaseLike( postNum );
	}

	@Override
	public int increaseDislike( int postNum ) {
		// TODO Auto-generated method stub
		return dao.increaseDislike( postNum );
	}

	@Override
	public int increaseViews( int postNum ) {
		// TODO Auto-generated method stub
		return dao.increaseViews( postNum );
	}

	/**
	 * 게시글 수정
	 */
	@Override
	public int updatePost( PostVO postVo ) {
		// TODO Auto-generated method stub
		return dao.updatePost( postVo );
	}

	
	/* Jack Snider 시작 */
	

}
