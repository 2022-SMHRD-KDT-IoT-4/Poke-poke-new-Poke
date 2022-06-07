package com.poke.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poke.DAO.Plant_careDAO;
import com.poke.domain.Plant_care;

public class PlantCareUpdateController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 날짜와 nickname, 수정된 diary, height 값 가져오기
		String day = "2022-06-02 03:25:44";
		String nickname = "아롱이";
		String diary = "요를레이휴";
		int plant_height = 2;
		
		
		
		
		Plant_care vo = new Plant_care();
		vo.setLast_date(day);
		vo.setPlant_diary(diary);
		vo.setPlant_height(plant_height);
		vo.setPlant_nickname(nickname);
		
		Plant_careDAO dao = new Plant_careDAO();
		dao.plant_careUpdate(vo);
		
		
		return "Calendar";
	}

}
