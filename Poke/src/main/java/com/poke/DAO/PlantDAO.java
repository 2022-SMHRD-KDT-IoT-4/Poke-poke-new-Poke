package com.poke.DAO;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.poke.domain.Garden;
import com.poke.domain.Plant;
import com.poke.domain.Plant_care;

public class PlantDAO {
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
	

	// 사용자 plant_seq에 plant_number로 plant테이블에서 식물 정보 가져오기
	public Plant plantSelectOne(int plant_number) {
		SqlSession session = sqlSessionFactory.openSession();
		Plant plantOne = session.selectOne("plantSelectOne", plant_number);
		session.close();
		return plantOne;
	}
	
	
	// id -> (garden)plant_number list형태 -> (plant)데이터 가져오기
	// 사용자가 키우는 식물의 번호를 가져와서 plant에 식물에 관련된 정보 가져오기
	

	

}
