package com.poke.DAO;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.poke.domain.Plant_care;
import com.poke.domain.Plant_Garden;

public class Plant_careDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "com/poke/DAO/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	// plant_Care last_date 가져오기
	public Plant_care plant_CareSelcet(int plant_seq){
		SqlSession session = sqlSessionFactory.openSession();
		Plant_care plant_care = session.selectOne("plant_CareSelcet",plant_seq);
		session.close();
		return plant_care;
	}
	
	// 다음 식물 줄 날 계산
	public String waterNextDay(Plant_Garden plant_garden) {
		SqlSession session = sqlSessionFactory.openSession();
		String nextDate = session.selectOne("waterNextDay", plant_garden);
		session.close();
		return nextDate; 
	}
	
	
	
	
}
