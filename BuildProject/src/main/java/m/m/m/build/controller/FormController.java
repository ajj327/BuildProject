package m.m.m.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormController {

	//-Forms,�ټ������
	@RequestMapping("/forms")
	public String forms(){
		
		return "form/forms";
	}
	
	
	//����׷쳪���¿�
	@RequestMapping("/CompanyFunctionality")
	public String CompanyFunctionality(){
		
		return "form/CompanyFunctionality";
	}
}
