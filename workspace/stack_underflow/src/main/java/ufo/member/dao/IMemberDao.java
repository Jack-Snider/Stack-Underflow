package ufo.member.dao;

import ufo.vo.MemberVO;

public interface IMemberDao {
	
	/**
	 * 회원정보를 회원테이블에 저장
	 * @param memVo
	 * @return 1 : 저장성공, 0 : 저장실패
	 */
	public int insertMember(MemberVO memVo);

	public int checkById(String mem_id);
	public int checkByNknm(String mem_nknm);

	public MemberVO passcheck(String mem_id);
	/**
	 * 해당아이디의 존재여부확인
	 * @param mem_id
	 * @return int 1 : 아이디 존재, 0 :아이디 존재x
	 */
	public int logindenyId(String mem_id);
	
}
