package com.poke.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.poke.DAO.PlantDAO;
import com.poke.domain.Plant;
import com.poke.domain.PlantResult;

public class PlantInfoTemperatureController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// String plant_nickname;
		
		int humidity = -1;
		int temperature = 0;
		Plant plant = new Plant();
		plant.setPlant_nickname("다롱이");
	
		if(request.getParameter("Soil_moisture")!=null) {
			 humidity = Integer.parseInt(request.getParameter("Soil_moisture"));
			System.out.println("토양습도 : "+humidity);
			
			plant.setHumidity(humidity);
			double temperature1 = Double.parseDouble(request.getParameter("temperature"));
			temperature = (int)temperature1;
			plant.setTemperature(temperature);
			System.out.println("온도 : "+temperature);
			
			
			
			PlantDAO dao = new PlantDAO();
			PlantResult result=dao.plant_compare(plant);
			System.out.println(result);
			
			 Gson g = new Gson();
			 String json = g.toJson(result);
			 
			 response.setContentType("text/json;charset=utf-8");
			 PrintWriter out = response.getWriter();
			 out.print(json);
			
		}
		
		
		

				
		return "NotPageMove";
	}

}
