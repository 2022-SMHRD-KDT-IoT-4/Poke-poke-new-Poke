package com.poke.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poke.DAO.GardenDAO;
import com.poke.domain.Garden;
import com.poke.domain.Plant_care;

public class PlantCalendarViewController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		// 아이디 데이터 가져오기
		String id = "admin";
		// 식물 정보 가져오기
		GardenDAO dao = new GardenDAO();
		List<List> calendarList = dao.getAllPlantList(id);
		//		List<Plant_care> calendarList = dao.getAllPlantList(id);
		System.out.println(calendarList);
			
		
		// 객체 바인딩
		request.setAttribute("calendarList", calendarList);
		
		
		return "Calendar";
		
	}

}
