package ufo.member.service;

import ufo.member.dao.IMemberDao;
import ufo.member.dao.MemberDaoImpl;
import ufo.vo.FilesVO;
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
	public int insertFile(FilesVO fileVo) {
		// TODO Auto-generated method stub
		return dao.insertFile(fileVo);
	}

	@Override
	public FilesVO selectFile(String mem_id) {
		// TODO Auto-generated method stub
		return dao.selectFile(mem_id);
	}

}
