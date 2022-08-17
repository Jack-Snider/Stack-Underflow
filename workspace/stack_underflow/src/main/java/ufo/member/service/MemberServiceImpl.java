package ufo.member.service;

import java.util.List;

import ufo.member.dao.IMemberDao;
import ufo.member.dao.MemberDaoImpl;
import ufo.vo.MemberVO;

public class MemberServiceImpl implements IMemberService{

	private IMemberDao dao;
	
	private static IMemberService service;
	
	private MemberServiceImpl() {
		dao = MemberDaoImpl.getInstance();
	}
	
	public static IMemberService getInstance() {
		if(service == null) service = new MemberServiceImpl();
		return service;
	}
	
	
	
	/* 호겸 시작 */
	@Override
	public int insertMember(MemberVO memVo) {
		return dao.insertMember(memVo);
	}
	
	@Override
	public int checkById(String mem_id) {
		return dao.checkById(mem_id);
	}
	
	@Override
	public int checkByNknm(String mem_nknm) {
		return dao.checkByNknm(mem_nknm);
	}
	/* 호겸 끝 */
	
	
	
	
	
	
	
	
	/* 명범 시작 */
	@Override
	public List<MemberVO> findIdName() {
		// TODO Auto-generated method stub
		return dao.findIdName();
	}

	@Override
	public MemberVO findregNo(String mem_regno) {
		// TODO Auto-generated method stub
		return dao.findregNo(mem_regno);
	}

	@Override
	public int findregNoCount(String mem_regno) {
		// TODO Auto-generated method stub
		return dao.findregNoCount(mem_regno);
	}




	@Override
	public MemberVO logincheck(MemberVO paramMemVo) {
		// TODO Auto-generated method stub
		return dao.logincheck(paramMemVo);
	}

	@Override
	public int chngePass(String mem_email) {
		// TODO Auto-generated method stub
		return dao.chngePass(mem_email);
	}
	/* 명범 끝 */

	
	/* Jack Snider 시작 */
	@Override
	public MemberVO getMember(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getMember(mem_id);
	}
	/* Jack Snider 끝 */
}
