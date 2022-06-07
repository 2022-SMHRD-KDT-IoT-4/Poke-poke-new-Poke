package com.poke.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poke.DAO.GardenDAO;
import com.poke.DAO.PlantDAO;
import com.poke.DAO.Plant_careDAO;
import com.poke.domain.Garden;
import com.poke.domain.Plant;
import com.poke.domain.Plant_care;
import com.poke.domain.Plant_Garden;

public class PlantWaterController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String id = request.getParameter("id");
		
		String id = "admin";

		
		GardenDAO dao = new GardenDAO();
		ArrayList<Plant_care> plant_care =dao.waterNext(id);
		System.out.println(plant_care); // 물 줄 날과 식물 고유 번호 불러오기
		

		return "Calendar";


	
	}
	
	
	
	
}