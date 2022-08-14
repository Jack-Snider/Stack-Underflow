package ufo.member.service;

import java.util.List;

import ufo.vo.MemberVO;

public interface IMemberService {
	
	/**
	 * 회원정보를 회원테이블에 저장
	 * @param memVo
	 * @return 1 : 저장성공, 0 : 저장실패
	 */
	public int insertMember(MemberVO memVo);
	
	public int checkById(String mem_id);
	
	public int checkByNknm(String mem_nknm);
	
	/**
	 * 아이디를 입력받아 비밀번호 일치여부 확인
	 * @param memVo
	 * @return MemberVO mem_pass
	 */
	public MemberVO passcheck(String mem_id);
	/**
	 * 해당아이디의 존재여부확인
	 * @param mem_id
	 * @return int 1 : 아이디 존재, 0 :아이디 존재x
	 */
	public int logindenyId(String mem_id);
	/**
	 * 리스트로 받아와 이름목록중에 찾는 이름이 있는지 찾음
	 * @return List
	 */
	public List<MemberVO> findIdName();
	/**
	 * 이메일을 입력받아 일치하는 이름이 있는지 확인한다
	 * @param mem_email
	 * @return 
	 */
	public MemberVO findIdEmail(String mem_email);
	/**
	 * 이메일에 해당하는 이름의 존재여부를 확인함
	 * @param mem_email
	 * @return int 0: 존재하지않음 1: 존재 
	 */
	public int findIdEmailCount(String mem_email);
	
}
