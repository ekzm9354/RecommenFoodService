package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class MemberDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	int row;

	public int Join(MemberDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.insert("Join", dto);
		session.close();
		return row;
	}

	public MemberDTO Login(MemberDTO dto) {
		session = sqlSessionFactory.openSession(true);
		MemberDTO info = session.selectOne("Login", dto);
		session.close();
		return info;
	}

	public int Delete(String id) {
		session = sqlSessionFactory.openSession(true);
		row = session.delete("delete", id);
		session.close();
		return row;
	}


}
