package ufo.member.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ufo.util.SqlMapClientFactory;
import ufo.vo.MemberVO;

public class MemberDaoImpl implements IMemberDao{

	private SqlMapClient smc;
	
	private static IMemberDao dao;
	
	private MemberDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
		} 
	
	public static IMemberDao getInstance() {
		if(dao == null) dao = new MemberDaoImpl();
		return dao;
	}
	
	@Override
	public int insertMember(MemberVO memVo) {
		int cnt = 0;
		try {
			if(smc.insert("member.insertMember", memVo) == null) cnt = 1;
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}
	
	@Override
	public int checkById(String mem_id) {
		int cnt = 0;
		try {
			cnt = (Integer)smc.queryForObject("member.checkById", mem_id);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}
	
	@Override
	public int checkByNknm(String mem_nknm) {
		int cnt = 0;
		try {
			cnt = (Integer)smc.queryForObject("member.checkByNknm", mem_nknm);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}
	

	@Override
	public List<MemberVO> findIdName() {
		List<MemberVO> list=null;
		try {
			list=smc.queryForList("member.findIdName");
		} catch (Exception e) {
			list=null;
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public MemberVO findregNo(String mem_regno) {
		MemberVO memVo=null;
		try {
			memVo=(MemberVO) smc.queryForObject("member.findregNo",mem_regno);
		} catch (Exception e) {
			// TODO: handle exception
			memVo=null;
			e.printStackTrace();
		}
		return memVo;
	}

	@Override
	public int findregNoCount(String mem_regno) {
		int cnt=0;
		try {
			cnt=(int) smc.queryForObject("member.findregNoCount",mem_regno);
		} catch (Exception e) {
			cnt=0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public MemberVO logincheck(MemberVO paramMemVo) {
		// TODO Auto-generated method stub
		MemberVO memVo=null;
		try {
			memVo=(MemberVO) smc.queryForObject("member.logincheck",paramMemVo);
		} catch (Exception e) {
			memVo=null;
			e.printStackTrace();
		}
		return memVo;
	}

	@Override
	public int chngePass(String mem_email) {
		// TODO Auto-generated method stub
		int cnt=0;
		try {
			cnt=smc.update("member.chngePass",mem_email);
		} catch (Exception e) {
			cnt=0;
		}
		return cnt;
	}
}
