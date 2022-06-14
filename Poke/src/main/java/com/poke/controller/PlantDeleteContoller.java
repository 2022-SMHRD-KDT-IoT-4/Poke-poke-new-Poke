package com.poke.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poke.DAO.GardenDAO;

public class PlantDeleteContoller implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int plant_seq = Integer.parseInt(request.getParameter("plant_seq"));
		GardenDAO dao = new GardenDAO();
		dao.GardenDelete(plant_seq);
		return "NotPageMove";
	}

}
