package share.all.controller;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.View;

import share.all.dto.HanGang;
import share.all.dto.Member;
import share.all.service.MemberService;

@Controller
public class MemberController {
	
	
	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private View jsonview;
 
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

		memberservice.registerMember(member);
		return "home.index";
	}

	// 마이페이지로 이동
	@RequestMapping(value = "mypage.sanote", method = RequestMethod.GET)
	public String mypageGo(Principal principal, Model model) {
		
		String id = principal.getName();
		Member member = memberservice.getMember(id);
		model.addAttribute("member", member);
		
		return "member.mypage";
	}
	
	// 마이페이지에서 프로필사진변경 비동기
	@RequestMapping(value="profileChange.sanote", method=RequestMethod.POST)
	public View profileChange(CommonsMultipartFile file , Principal principal, HttpServletRequest request) throws Exception {
		String id = principal.getName();
		
		System.out.println("여기가 POST");
		System.out.println("컨트롤러진입");
		String fpath2 = null;
		String filename = "";
		if (file != null) {
			filename = file.getOriginalFilename();
			String path = request.getServletContext().getRealPath("/resources/img/profile");
			String fpath = path + "\\" + filename;

			System.out.println(filename + " , " + fpath);
			fpath2 = "/resources/img/profile" + filename;
			
			if (!filename.equals("")) {
				// 서버에 파일 업로드 (write)
				System.out.println("여기 들어왔나?");
				FileOutputStream fs = new FileOutputStream(fpath);
				fs.write(((MultipartFile) file).getBytes());
				fs.close();
			}
			
			memberservice.changeProfile(id,fpath2);
		}
		
		return jsonview;
	}
	// 마이페이지에서 비밀번호변경 비동기
	@RequestMapping(value="pwdUpdate.sanote", method=RequestMethod.POST)
	public View pwdChange(String password, Principal principal) {
		
		String id = principal.getName();
		System.out.println("pwd : " + password);
		memberservice.changePwd(id, password);
		
		return jsonview;
	}
	
	// openAPI 비동기로 디비에 insert
	@RequestMapping(value="gogogoDB.sanote", method=RequestMethod.POST)
	public View gogoDB(@RequestBody ArrayList<HashMap<String, String>> JsonData, Model model) {
		
		System.out.println("sssss : " + JsonData.get(0).get("DONG"));
		
		/*for(int i=0; i<JsonData.size(); i++) {
			HanGang h = new HanGang();
			h = (HanGang) JsonData.get(i);
			
			System.out.println(h.toString());
		}*/
		
		//memberservice.insertJsonData(hanlist);
		model.addAttribute("seoul", JsonData);

		
		return jsonview;
	}
	
	// JSON 테이블 페이지로 이동
	@RequestMapping(value = "jsonpage.sanote", method = RequestMethod.GET)
	public String goJsonPage() {

		return "Json";
	}
	
	@RequestMapping(value="goWeather.sanote", method = RequestMethod.GET)
	public String goWeatherPage() {
		return "weather";
	}
	
	
}
