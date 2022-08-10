package ufo.member.service;

import ufo.vo.MemberVO;

public interface IMemberService {
	
	/**
	 * 회원정보를 회원테이블에 저장
	 * @param memVo
	 * @return 1 : 저장성공, 0 : 저장실패
	 */
	public int insertMember(MemberVO memVo);
	/**
	 * 회원ID를 입력받아 비밀번호 일치여부 확인
	 * @param String
	 * @return 
	 */
	public MemberVO passcheck(String mem_id);
}
