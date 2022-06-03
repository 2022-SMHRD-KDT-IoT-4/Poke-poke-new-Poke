package com.poke.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.poke.DAO.UserDAO;
import com.poke.domain.UserInfoVO;


public class UserLoginController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		UserInfoVO user = new UserInfoVO(id, pw);
		
		UserDAO dao = new UserDAO();
		UserInfoVO result = dao.UserLogin(user);
		HttpSession session = request.getSession();
		if(result!=null) {
			session.setAttribute("user", result);
		}
		
		return "MainLogin";
	}

}
