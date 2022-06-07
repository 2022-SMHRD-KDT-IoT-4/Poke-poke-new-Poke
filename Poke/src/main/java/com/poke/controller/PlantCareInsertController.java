package com.poke.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poke.DAO.Plant_careDAO;
import com.poke.domain.Plant_care;

public class PlantCareInsertController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 데이터 가져오기
		String plant_nickname = "다롱이";
		String last_date = "de";
		String plant_diary = "안뇽";
		int plant_height = 3;
		
		
		Plant_care plant_care = new Plant_care(plant_nickname, last_date, plant_diary, plant_height);
		
		Plant_careDAO dao = new Plant_careDAO();
		
		dao.plant_careInsert(plant_care);
		
		
		
		
		return "Calendar";
	}

}
