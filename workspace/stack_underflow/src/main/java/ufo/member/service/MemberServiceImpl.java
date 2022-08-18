package ufo.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	@Override
	public List<MemberVO> getScoreMembers(){
		return dao.getScoreMembers();
	};
	
	@Override
	public void updateScorePerMember() {
		
		List<MemberVO> scorePerMembers = getScoreMembers();
		
		for(MemberVO mvo : scorePerMembers) {
			Map<String, Object> scoresMap = new HashMap<String, Object>();
			scoresMap.put("mem_id", mvo.getMem_id());
			scoresMap.put("mem_score", mvo.getMem_score());
			int cnt = dao.updateScorePerMember(scoresMap);
			if(cnt==0) {
				System.out.println("insertScorePerMember 실패");
				break;
			}
		}
		
	};
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
	public int chngePass(MemberVO paramMemVo) {
		// TODO Auto-generated method stub
		return dao.chngePass(paramMemVo);
	}
	@Override
	public MemberVO findpass1(MemberVO MemVo) {
		// TODO Auto-generated method stub
		return dao.findpass1(MemVo);
	}
	@Override
	public MemberVO passwordchk(String mem_id) {
		// TODO Auto-generated method stub
		return dao.passwordchk(mem_id);
	}
	@Override
	public MemberVO passValidEmail(String mem_id) {
		// TODO Auto-generated method stub
		return dao.passValidEmail(mem_id);
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
