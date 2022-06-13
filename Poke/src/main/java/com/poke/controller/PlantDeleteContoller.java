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
		String plant_nickname = request.getParameter("plant_nickname");
		GardenDAO dao = new GardenDAO();
		dao.GardenDelete(plant_nickname);
		return "NotPageMove";
	}

}
