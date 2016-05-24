package m.m.m.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	
	@RequestMapping("/pr")//-연습용
	public String pr(){
		
		return "pr";
	}
	
	//------------------------------------
	
	
	//-DashBoard[mainPage], 첫번째바
	@RequestMapping("/index")
	public String index(){
		
		return "pages/index";
	}
	
	
	//subIndex2
	@RequestMapping("/index2")
	public String index2(){
		
		
		return "pages/index2";
	}
	
	
	//leftBar
	@RequestMapping("leftBar")
	public String leftBar(){
		
		return "pages/leftBar";
	}

	
	
	
	

	
	//------------------------------------
	
	
	//현재 사용하지 않은 page
	
	
//	//-Sample page-blank page
//	@RequestMapping("/blank")
//	public String blank(){
//		
//		return "pages/blank";
//	}
	
	
	
//	//-UI Elements-Buttons
//	@RequestMapping("/buttons")
//	public String buttons(){
//		
//		return "pages/buttons";
//	}
	
	
	
//	//-UI Elements-Grid
//	@RequestMapping("/grid")
//	public String grid(){
//		
//		return "pages/grid";
//	}
	
	
	
//	//-UI Elements-Icons
//	@RequestMapping("/icons")
//	public String icons(){
//		
//		return "pages/icons";
//	}
	
	
	
//	//-UI Elements-notifications
//	@RequestMapping("/notifications")
//	public String notifications(){
//		
//		return "pages/notifications";
//	}
	
	
	
//	//-UI Elements-typography
//	@RequestMapping("/typography")
//	public String typography(){
//		
//		return "pages/typography";
//	}
}
