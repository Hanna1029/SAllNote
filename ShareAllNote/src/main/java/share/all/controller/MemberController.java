package share.all.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import share.all.dto.Member;
import share.all.service.MemberService;

@Controller
public class MemberController {
	
	
	@Autowired
	MemberService memberservice;
	

	// 로그인페이지 이동 (시큐리티)
	@RequestMapping("login.sanote")
	public String login() {

		return "login";
	}

	// return "redirect:/Admin/manageEvent.htm";

	// 회원가입 폼으로 이동
	@RequestMapping(value = "register.sanote", method = RequestMethod.GET)
	public String registerForm() {

		return "register";
	}

	// 회원가입 완료
	@RequestMapping(value = "register.sanote", method = RequestMethod.POST)
	public String registerSuccess(Member member) {

		return "home.index";
	}

}
