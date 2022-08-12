package ufo.post.dao;

import ufo.vo.PostVO;

public interface IPostDao {

	/*
	 
	 	작성자 : Jack Snider
	 
	 */
	
	/**
	 * 
	 * 매개변수 : PostVO 객체
	 * 
	 * @param post
	 * @return 삽입 성공시 : 1, 실패시 : 0
	 */
	public int insertPost(PostVO post);
	
	
}
