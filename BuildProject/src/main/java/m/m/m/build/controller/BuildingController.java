package m.m.m.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuildingController {

	
	//-Tables[��������� �� ����],�׹�°��
	@RequestMapping("/tables")
	public String tables(){
		
		return "building/tables";
	}
}
