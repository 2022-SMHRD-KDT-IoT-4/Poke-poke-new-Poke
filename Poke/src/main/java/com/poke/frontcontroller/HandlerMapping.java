package com.poke.frontcontroller;

import java.util.HashMap;

import com.poke.controller.Controller;
import com.poke.controller.RegisterUserController;
import com.poke.controller.UserLoginController;
import com.poke.controller.UserLogoutController;
import com.poke.controller.ViewLoginPageController;
import com.poke.controller.ViewReisterUserController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>(); 
		mappings.put("/userLogin.do", new UserLoginController());
		mappings.put("/viewLoginPage.do", new ViewLoginPageController());
		mappings.put("/registerUser.do", new RegisterUserController());
		mappings.put("/viewRegisterUser.do", new ViewReisterUserController());
		mappings.put("/userLogout.do", new UserLogoutController());
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
