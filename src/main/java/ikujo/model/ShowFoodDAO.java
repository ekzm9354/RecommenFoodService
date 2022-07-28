package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class ShowFoodDAO {
		
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	
	
	// 로그인후 섭취했던 음식보는 기능을 위한 메소드
		public ArrayList<ShowFoodDTO> showFoodId(String id) {
			session = sqlSessionFactory.openSession(true);
			ArrayList<ShowFoodDTO> food_list = (ArrayList)session.selectList("showFoodId", id);
			session.close();
			return food_list;
		}

}
