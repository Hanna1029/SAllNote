package share.all.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FileController {

	// 홈으로 이동
	@RequestMapping(value = "file.sanote", method = RequestMethod.GET)
	public String goIndex() {
		
		return "test.filemain";
	}
	
	
	
	
}
