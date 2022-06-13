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
import com.poke.domain.PlantList;
import com.poke.domain.PlantResult;
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
	
	
	// 사용자의 nickname으로 plant 정보 가져오기 
	public Plant plantInfoSelectOne(String plant_nickname) {
		SqlSession session = sqlSessionFactory.openSession();
		Plant plantOne = session.selectOne("plantInfoSelectOne", plant_nickname);
		session.close();
		return plantOne;
	}
	
	
	// plant list 가져오기 
	public List<PlantList> Plant_List() {
		SqlSession session = sqlSessionFactory.openSession();
		List<PlantList> list = session.selectList("Plant_List");
		session.close();
		return list;
	}	
	
	
	
	// plant 정보와 아두이노에 입력받은 데이터 비교하기
	public PlantResult  plant_compare(Plant plant) {
		PlantResult result = new PlantResult();
		
		
		Plant plantInfo = plantInfoSelectOne(plant.getPlant_nickname());
		result.setPlant_nickname(plant.getPlant_nickname());
		if (plant.getHumidity()<=plantInfo.getHumidity()) {
			result.setHumidityResult("물 부족");
		}  
			
			if (plant.getTemperature() <=plantInfo.getTemperature()) {
			result.setTeperatureResult("온도 낮음");
		}
			
			if (plant.getUv() >= plantInfo.getUv()) {
			result .setUvResult("빛이 셈");
					
		}
			return result;
		
		
	}

}
