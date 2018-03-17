package share.all.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {

	// 홈으로 이동
	@RequestMapping("hhome.sanote")
	public String goIndex() {
		
		return "home.index";
	}
	
	
	
	
}
