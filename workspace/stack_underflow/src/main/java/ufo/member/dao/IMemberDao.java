package ufo.member.dao;

import ufo.vo.FilesVO;
import ufo.vo.MemberVO;

public interface IMemberDao {
	
	/**
	 * 회원정보를 회원테이블에 저장
	 * @param memVo
	 * @return 1 : 저장성공, 0 : 저장실패
	 */
	public int insertMember(MemberVO memVo);
	
	/**
	 * 파일을 Files테이블에 저장 ( 프로필 사진 ) 
	 * @param fileVo
	 * @return 1 : 저장성공, 0 : 저장실패
	 */
	public int insertFile( FilesVO fileVo );
	
	/**
	 * 어떤 회원의 파일인지 구분하기 위함
	 * ==> where file_etc = mem_id
	 * @param mem_id
	 * @return FilesVO객체
	 */
	public FilesVO selectFile( String mem_id );
}
