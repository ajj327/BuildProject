package m.m.m.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormController {

	//-Forms,다섯번재바
	@RequestMapping("/forms")
	public String forms(){
		
		return "form/forms";
	}
	
	
	//사원그룹나누는용
	@RequestMapping("/CompanyFunctionality")
	public String CompanyFunctionality(){
		
		return "form/CompanyFunctionality";
	}
}
