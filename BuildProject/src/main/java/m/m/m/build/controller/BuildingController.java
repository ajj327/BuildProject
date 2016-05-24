package m.m.m.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuildingController {

	
	//-Tables[자재용으로 쓸 예정],네번째바
	@RequestMapping("/tables")
	public String tables(){
		
		return "building/tables";
	}
}
