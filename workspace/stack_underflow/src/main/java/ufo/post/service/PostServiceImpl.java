package ufo.post.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ufo.post.dao.IPostDao;
import ufo.post.dao.PostDaoImpl;
import ufo.vo.PageVO;
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
	
	/* 호겸 시작 */
	
	private int count = 0;
	
	// 게시글 전체 갯수 가져오기
	@Override
	public int totalCount() {
		return dao.totalCount();
	}
	
	// 전체 페이지 수 가져오기
	@Override
	public int totalPage() {
		// 전체 글 갯수 구하기
		count = this.totalCount();
		
		// 전체 페이지 수 구하기
		int totalPage = (int)Math.ceil((double)count / PageVO.getPerList());
		return totalPage;
	}
	
	// 페이지 정보 가져오기
	@Override
	public PageVO pageInfo(int cpage) {
		// 전체 페이지 수 구하기
		int totalPage = this.totalPage();
		// 게시글 수 구하기
		int start = (cpage-1) * PageVO.getPerList() + 1;
		int end = start + PageVO.getPerList() - 1;
		if(end > count) end = count; 
		// 페이지 수 구하기
		int startPage = ((cpage-1)/PageVO.getPerPage()*PageVO.getPerPage())+1;
		int endPage = startPage + PageVO.getPerPage() - 1;
		if(endPage > totalPage) endPage = totalPage; 
		
		PageVO vo = new PageVO();
		vo.setStart(start);
		vo.setEnd(end);
		vo.setStartPage(startPage);
		vo.setEndPage(endPage);
		vo.setTotalPage(totalPage);
		
		return vo;
	}
	
	// 페이지 별 게시글 가져오기
	@Override
	public List<PostVO> getPostPerPage(Map<String, Object> map) {
		return dao.getPostPerPage(map);
	}
	
	/* 호겸 끝 */
}
