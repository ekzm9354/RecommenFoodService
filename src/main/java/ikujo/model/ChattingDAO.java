package ikujo.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class ChattingDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	int row;
	
	public int ChattingInsert(ChattingDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.insert("ChattingInsert",dto);
		session.close();
		return row;
	}
}
