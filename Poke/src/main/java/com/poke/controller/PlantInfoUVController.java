package com.poke.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.poke.DAO.PlantDAO;
import com.poke.controller.Controller;
import com.poke.domain.Plant;
import com.poke.domain.PlantResult;

public class PlantInfoUVController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		float uv = -1;

		Plant plant = new Plant();
		plant.setPlant_nickname("다롱이");
		

		
		//센서 값과 식물 이름 가져오기 
		//String plant_nickname = "아롱이";

		
		if(request.getParameter("outputVoltage")!= null) {
			uv = Float.parseFloat(request.getParameter("outputVoltage"));
			System.out.println("uv : "+uv);
			plant.setUv(uv);

			PlantDAO dao = new PlantDAO();
			PlantResult result=dao.plant_compareUV(plant);
			
			
			 Gson g = new Gson();
			 String json = g.toJson(result);
			 
			 response.setContentType("text/json;charset=utf-8");
			 PrintWriter out = response.getWriter();
			 out.print(json);
			
			
		}
		
		
		
		
		
		
		
		
		return "NotPageMove";
	}

}
