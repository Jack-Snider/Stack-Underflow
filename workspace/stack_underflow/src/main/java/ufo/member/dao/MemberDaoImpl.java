package ufo.member.dao;

import java.sql.SQLException;

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
	public MemberVO passcheck(String mem_id) {
		// TODO Auto-generated method stub
		MemberVO memVo=null;
		
		try {
			memVo=(MemberVO) smc.queryForObject("login.passwordchk",mem_id);
		} catch (Exception e) {
			memVo=null;
			e.printStackTrace();
		}
		
		
		return memVo;
	}

}
