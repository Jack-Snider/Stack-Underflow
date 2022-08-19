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
	public void updateScoreRank() {
		List<MemberVO> scorePerMembers = getScoreMembers();
		
		for(MemberVO mvo : scorePerMembers) {
			String mem_id = mvo.getMem_id();
			int score = mvo.getMem_score();
			String rank = "";
			
			if(score>=1000) rank = "골드";
			else if(score>=100 && score<1000) rank = "실버";
			else if(score>=10 && score<100) rank = "브론즈";
			else rank = "Unranked";
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("mem_id", mem_id);
			map.put("mem_score", score);
			map.put("mem_rank", rank);
			int cnt = dao.updateScoreRank(map);
			if(cnt==0) {
				break;
			}
		}
		
	};
	
	@Override
	public List<MemberVO> getMembersBySorting(){
		return dao.getMembersBySorting();
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
