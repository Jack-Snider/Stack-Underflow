package ufo.member.dao;

import java.util.List;

import ufo.vo.MemberVO;

public interface IMemberDao {
	
	/* 호겸 시작 */
	/**
	 * 회원정보를 회원테이블에 저장
	 * @param memVo
	 * @return 1 : 저장성공, 0 : 저장실패
	 */
	public int insertMember(MemberVO memVo);

	public int checkById(String mem_id);
	
	public int checkByNknm(String mem_nknm);
	/* 호겸 끝 */
	
	
	/* 명범 시작 */
	/**
	 * 아이디와 비밀번호값을 입력받아와 객체를 반환한다
	 * @param paramMemVo
	 * @return MemberVo
	 */
	public int logincheck(MemberVO paramMemVo);
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
	public MemberVO findregNo(String mem_regno);
	/**
	 * 이메일에 해당하는 이름의 존재여부를 확인함
	 * @param mem_email
	 * @return int 0: 존재하지않음 1: 존재 
	 */
	public int findregNoCount(String mem_regno);
	/**
	 * 이메일을 입력받아 비밀번호를 수정한다
	 * @param mem_email
	 * @return 수정성공 1,수정실패 0
	 */
	public int chngePass(String mem_email);
	/* 명범 끝 */
}
