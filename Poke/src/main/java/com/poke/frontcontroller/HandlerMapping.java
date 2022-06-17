package com.poke.frontcontroller;

import java.util.HashMap;

import com.poke.controller.Controller;
import com.poke.controller.FileLocationLoadController;
import com.poke.controller.GardenListController;
import com.poke.controller.PlantAutoWaterController;
import com.poke.controller.PlantCaledarController;
import com.poke.controller.PlantCalendarViewController;
import com.poke.controller.PlantCareInsertController;
import com.poke.controller.PlantCareUpdateController;
import com.poke.controller.PlantCareViewController;
import com.poke.controller.PlantController;
import com.poke.controller.PlantDelController;
import com.poke.controller.PlantDeleteContoller;
import com.poke.controller.PlantDelController;
import com.poke.controller.PlantAutoWaterController;
import com.poke.controller.PlantInfoTemperatureController;
import com.poke.controller.PlantInfoTemperatureViewController;
import com.poke.controller.PlantInfoUVController;
import com.poke.controller.PlantInfoUVViewController;
import com.poke.controller.PlantInsertContoller;
import com.poke.controller.PlantListController;
import com.poke.controller.PlantWaterController;
import com.poke.controller.RegisterUserController;
import com.poke.controller.UpdateEmailController;
import com.poke.controller.UpdateNicknameController;
import com.poke.controller.UpdatePasswordController;
import com.poke.controller.UserLoginController;
import com.poke.controller.UserLogoutController;
import com.poke.controller.ViewChoice2ListController;
import com.poke.controller.ViewChoiceListController;
import com.poke.controller.ViewJoinController;
import com.poke.controller.ViewLoginController;
import com.poke.controller.ViewMainController;
import com.poke.controller.ViewMainLoginController;
import com.poke.controller.ViewMemAmendController;
import com.poke.controller.ViewQuestionListController;
import com.poke.controller.ViewRecommendListController;
import com.poke.controller.ViewRecommendPlantListController;

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
		mappings.put("/updateEmail.do", new UpdateEmailController());
		mappings.put("/updateNickname.do", new UpdateNicknameController());
		mappings.put("/updatePassword.do", new UpdatePasswordController());
		mappings.put("/viewMainLogin.do", new ViewMainLoginController());
		mappings.put("/viewMemAmend.do", new ViewMemAmendController());
		mappings.put("/viewRecommendList.do", new ViewRecommendListController());
		mappings.put("/viewChoiceList.do", new ViewChoiceListController());
		mappings.put("/viewChoice2List.do", new ViewChoice2ListController());
		mappings.put("/viewRecommendPlantList.do", new ViewRecommendPlantListController());
		mappings.put("/viewQuestionList.do", new ViewQuestionListController());
		mappings.put("/fileLocationLoad.do", new FileLocationLoadController());
		// you
		mappings.put("/plantwater.do", new PlantWaterController());
		mappings.put("/plantCalendar.do", new PlantCalendarViewController());
		mappings.put("/plantCalendarInsert.do", new PlantCareInsertController());
		mappings.put("/plantCareUpdate.do", new PlantCareUpdateController());
		mappings.put("/plantInfo.do", new PlantAutoWaterController());
		mappings.put("/plantCareView.do", new PlantCareViewController());
		mappings.put("/plantInsert.do", new PlantInsertContoller());
		mappings.put("/palntList.do", new PlantListController());
		mappings.put("/PlantDelete.do", new PlantDeleteContoller());
		mappings.put("/plantListView.do", new GardenListController());
		mappings.put("/plantInfoTemperature.do", new PlantInfoTemperatureController());
		mappings.put("/plantInfoUV.do", new PlantInfoUVController());

		
		// 센서값 출력 
		mappings.put("/plantTempueratureView.do", new PlantInfoTemperatureViewController());
		mappings.put("/plantUVView.do", new PlantInfoUVViewController());
		
		// 아두이노 신호

		mappings.put("/plantAutoWater.do", new PlantAutoWaterController());	
		
		
		// 페이지 실행
		mappings.put("/plantCalendarView.do", new PlantCaledarController());
		mappings.put("/plantView.do", new PlantController());
		mappings.put("/plantDeleteView.do", new PlantDelController());
	}
	
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
