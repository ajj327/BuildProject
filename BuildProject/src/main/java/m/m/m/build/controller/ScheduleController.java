package m.m.m.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ScheduleController {

	
	//-UI Elements-panelsWells[�����ٷ� �� ����],����°��
	@RequestMapping("/panelsWells")
	public String panelsWells(){
		
		return "schedule/panelsWells";
	}
	
	
	
	@RequestMapping("/DefaultFunctionality")
	public String DefaultFunctionality(){
		
		return "schedule/DefaultFunctionality";
	}
}
