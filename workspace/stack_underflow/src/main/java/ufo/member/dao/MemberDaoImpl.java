package ufo.member.dao;

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
			if(smc.insert("member.insertMember", memVo) == null)
			cnt = 1;
		} catch (Exception e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

}
