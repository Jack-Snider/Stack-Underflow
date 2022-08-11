package ufo.member.service;

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
	
	@Override
	public MemberVO passcheck(String mem_id) {
		// TODO Auto-generated method stub
		return dao.passcheck(mem_id);
	}

}
