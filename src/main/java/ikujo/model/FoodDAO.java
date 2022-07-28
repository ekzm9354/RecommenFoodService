package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class FoodDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	int row;

	public int insertFood(FoodDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.insert("insertFood", dto);
		session.close();
		return row;
	}

	public ArrayList<String> SelectFood(String keyword) {
		System.out.println(keyword);
		session = sqlSessionFactory.openSession(true);
		ArrayList<String> food_list = (ArrayList) session.selectList("SelectFood", keyword);
		session.close();
		return food_list;
	}
	// 로그인후 섭취했던 음식보는 기능을 위한 메소드
	public ArrayList<ShowFoodDTO> showFoodId(String id) {
		System.out.println(id);
		session = sqlSessionFactory.openSession(true);
		ArrayList<ShowFoodDTO> food_list = (ArrayList)session.selectList("showFoodId", id);
		session.close();
		return food_list;
	}
	
	
}
