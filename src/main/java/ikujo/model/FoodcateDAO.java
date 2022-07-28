package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;



import ikujo.db.SqlSessionManger;

public class FoodcateDAO {
	private SqlSessionFactory sqlSessionFactory= SqlSessionManger.getSqlSession();
	SqlSession session;
	
	//밥류 전체 데이터 조회
	public ArrayList<FoodcateDTO> riceview() {
		session= sqlSessionFactory.openSession(true);
		ArrayList<FoodcateDTO> riceview_list= (ArrayList)session.selectList("riceview");
		session.close();
		return riceview_list;
		
		
		
		
	}
}
