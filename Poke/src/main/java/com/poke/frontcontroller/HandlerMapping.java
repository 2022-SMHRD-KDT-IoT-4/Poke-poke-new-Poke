package com.poke.frontcontroller;

import java.util.HashMap;

import com.poke.controller.Controller;
import com.poke.controller.RegisterUserController;
import com.poke.controller.UpdateEmailController;
import com.poke.controller.UpdateNicknameController;
import com.poke.controller.UpdatePasswordController;
import com.poke.controller.UserLoginController;
import com.poke.controller.UserLogoutController;
import com.poke.controller.UserSecessionController;
import com.poke.controller.ViewLoginPageController;
import com.poke.controller.ViewReisterUserController;
import com.poke.controller.ViewUpdateEmailPageController;
import com.poke.controller.ViewUpdateNicknamePageController;
import com.poke.controller.ViewUpdatePageController;
import com.poke.controller.ViewUpdatePasswordPageController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>(); 
		mappings.put("/userLogin.do", new UserLoginController());
		mappings.put("/viewLoginPage.do", new ViewLoginPageController());
		mappings.put("/registerUser.do", new RegisterUserController());
		mappings.put("/viewRegisterUser.do", new ViewReisterUserController());
		mappings.put("/userLogout.do", new UserLogoutController());
		mappings.put("/userSecession.do", new UserSecessionController());
		mappings.put("/viewUpdatePage.do", new ViewUpdatePageController());
		mappings.put("/viewUpdateNicknamePage.do", new ViewUpdateNicknamePageController());
		mappings.put("/updateNickname.do", new UpdateNicknameController());
		mappings.put("/viewUpdatePasswordPage.do", new ViewUpdatePasswordPageController());
		mappings.put("/updatePassword.do", new UpdatePasswordController());
		mappings.put("/viewUpdateEmailPage.do", new ViewUpdateEmailPageController());
		mappings.put("/updateEmail.do", new UpdateEmailController());
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
