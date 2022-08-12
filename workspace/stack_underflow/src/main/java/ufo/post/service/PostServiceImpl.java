package ufo.post.service;

import java.util.List;

import ufo.post.dao.IPostDao;
import ufo.post.dao.PostDaoImpl;
import ufo.vo.PostVO;

public class PostServiceImpl implements IPostService {

	/*
	 	작성자 : Jack Snider
	 */
	
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

}
