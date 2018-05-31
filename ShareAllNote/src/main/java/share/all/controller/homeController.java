package share.all.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class homeController {

	// 홈으로 이동
	@RequestMapping("hhome.sanote")
	public String goIndex() {
		
		return "home.index";
	}
	
	@RequestMapping(value="goChatting.sanote", method = RequestMethod.GET)
	public String goChatting() {
		return "chatting";
	}	
	
}
