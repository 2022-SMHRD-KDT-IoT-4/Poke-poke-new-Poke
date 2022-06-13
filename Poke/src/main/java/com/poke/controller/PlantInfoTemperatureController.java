package com.poke.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PlantInfoTemperatureController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int humidity = 0;
		int temperature = 0;
		
		
		
		if(request.getParameter("Soil_moisture")!=null) {
			 humidity = Integer.parseInt(request.getParameter("Soil_moisture"));
			System.out.println("토양습도 : "+humidity);
			double temperature1 = Double.parseDouble(request.getParameter("temperature"));
			temperature = (int)temperature1;
			//int temperature = Integer.parseInt(request.getParameter("temperature"));
			System.out.println("온도 : "+temperature);
		}
				
				
				return "Calendar";
	}

}
