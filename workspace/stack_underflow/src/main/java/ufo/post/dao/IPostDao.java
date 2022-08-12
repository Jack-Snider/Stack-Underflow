package ufo.post.dao;

import java.util.List;

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
	
	
	/**
	 * 사용자가 작성한 특정 게시글 1개 반환
	 * @param mem_id
	 * @return Post객체
	 */
	//public PostVO getUserPost(String post_etc);
	
	
	/**
	 * 사용자가 작성한 모든 게시글 반환
	 * @param mem_id
	 * @return
	 */
	public List<PostVO> getUserPostAll(String mem_id);
	
}
