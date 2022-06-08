package com.poke.frontcontroller;

import java.util.HashMap;

import com.poke.controller.Controller;
import com.poke.controller.PlantCalendarViewController;
import com.poke.controller.PlantCareInsertController;
import com.poke.controller.PlantCareUpdateController;
import com.poke.controller.PlantWaterController;
import com.poke.controller.RegisterUserController;
import com.poke.controller.UpdateEmailController;
import com.poke.controller.UpdateNicknameController;
import com.poke.controller.UpdatePasswordController;
import com.poke.controller.UserLoginController;
import com.poke.controller.UserLogoutController;
import com.poke.controller.ViewJoinController;
import com.poke.controller.ViewLoginController;
import com.poke.controller.ViewMainController;
import com.poke.controller.ViewMainLoginController;
import com.poke.controller.ViewMemAmendController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>(); 
		mappings.put("/userLogin.do", new UserLoginController());
		mappings.put("/userLogout.do", new UserLogoutController());
		mappings.put("/registerUser.do", new RegisterUserController());
		mappings.put("/viewMain.do", new ViewMainController());
		mappings.put("/viewJoin.do", new ViewJoinController());
		mappings.put("/viewLogin.do", new ViewLoginController());
		mappings.put("/plantwater.do", new PlantWaterController());
		mappings.put("/plantCalendar.do", new PlantCalendarViewController());
		mappings.put("/plantCalendarInsert.do", new PlantCareInsertController());
		mappings.put("/plantCalendarUpdate.do", new PlantCareUpdateController());
		mappings.put("/plantCalendarView.do", new PlantCalendarViewController());
		mappings.put("/updateEmail.do", new UpdateEmailController());
		mappings.put("/updateNickname.do", new UpdateNicknameController());
		mappings.put("/updatePassword.do", new UpdatePasswordController());
		mappings.put("/viewMainLogin.do", new ViewMainLoginController());
		mappings.put("/viewMemAmend.do", new ViewMemAmendController());
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
