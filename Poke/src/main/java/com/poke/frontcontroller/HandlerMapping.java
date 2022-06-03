package com.poke.frontcontroller;

import java.util.HashMap;

import com.poke.controller.Controller;
import com.poke.controller.RegisterUserController;
import com.poke.controller.UserLoginController;
import com.poke.controller.ViewJoinController;
import com.poke.controller.ViewMainController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>(); 
		mappings.put("/userLogin.do", new UserLoginController());
		mappings.put("/registerUser.do", new RegisterUserController());
		mappings.put("/viewMain.do", new ViewMainController());
		mappings.put("/viewJoin.do", new ViewJoinController());
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
