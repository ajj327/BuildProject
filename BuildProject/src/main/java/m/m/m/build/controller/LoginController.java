package m.m.m.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	//-Sample Page-Login,������°��
	@RequestMapping("/login")
	public String login(){
		
		return "login/login";
	}
}
