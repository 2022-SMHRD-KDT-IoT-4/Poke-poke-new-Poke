package com.poke.frontcontroller;

import java.util.HashMap;

import com.poke.controller.Controller;
import com.poke.controller.UserLoginController;
import com.poke.controller.ViewLoginPageController;



public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>(); 
		mappings.put("/userLogin.do", new UserLoginController());
		mappings.put("/ViewLoginPage.do", new ViewLoginPageController());
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
