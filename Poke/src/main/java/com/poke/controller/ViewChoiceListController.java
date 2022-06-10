package com.poke.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.poke.DAO.ChoiceDAO;
import com.poke.domain.ChoiceVO;

public class ViewChoiceListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ChoiceDAO dao2 = new ChoiceDAO();
		ArrayList<ChoiceVO> list = dao2.ChoiceList1();
		Gson g = new Gson();
		String json = g.toJson(list);
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(json);
		return "NotPageMove";
	}

}
