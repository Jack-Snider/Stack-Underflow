package ufo.post.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import ufo.util.SqlMapClientFactory;
import ufo.vo.PostVO;

public class PostDaoImpl implements IPostDao {

	private SqlMapClient smc;

	private static IPostDao dao;

	private PostDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}

	public static IPostDao getInstance() {
		if (dao == null)
			dao = new PostDaoImpl();
		return dao;
	}

	/**
	 * 작성자 : Jack Snider
	 * 게시글정보 저장
	 */
	@Override
	public int insertPost(PostVO post) {
		// TODO Auto-generated method stub
		int cnt = 0;
		try {
			if(smc.insert("post.insertPost", post) == null) cnt = 1;
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

}
