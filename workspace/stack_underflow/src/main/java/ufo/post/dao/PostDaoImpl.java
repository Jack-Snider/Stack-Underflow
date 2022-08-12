package ufo.post.dao;

import com.ibatis.sqlmap.client.SqlMapClient;
import ufo.util.SqlMapClientFactory;

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

}
