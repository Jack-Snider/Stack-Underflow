package ufo.member.service;

import java.util.List;

import ufo.vo.MemberVO;

public interface IMemberService {
	
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
	 * 로그인 기능에서
	 * 아이디와 비밀번호값을 입력받아와 객체를 반환한다
	 * @param paramMemVo
	 * @return MemberVo
	 */
	public MemberVO logincheck(MemberVO paramMemVo);
	/**
	 * 아이디찾기 버튼에서 리스트로 받아와 
	 *  주민번호와 일치하는 이름목록중에 찾는 이름이 있는지 찾음
	 * @return List
	 */
	public List<MemberVO> findIdName();
	/**
	 * 아이디찾기 버튼에서
	 * MemberVO객체에서
	 * 주민번호 해당하는 이름의 존재여부를 확인함
	 * @param mem_email
	 * @return 
	 */
	public MemberVO findregNo(String mem_regno);
	/**
	 * 아이디찾기 버튼에서
	 * 주민번호 해당하는 이름의 존재여부를 확인함
	 * @param mem_regno
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
