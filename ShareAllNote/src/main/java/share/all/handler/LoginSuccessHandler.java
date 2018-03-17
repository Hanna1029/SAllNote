package share.all.handler;
import java.io.IOException;
import java.util.Iterator;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {

	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res, Authentication auth)
			throws IOException, ServletException {
		System.out.println("로그인성공!");
		System.out.println("현재권한은? : " + auth.getAuthorities().toString());
		if(auth.getAuthorities().toString().contains("ROLE_USER")) {
			res.sendRedirect(req.getContextPath()+"/hhome.sanote");
		}
	}
}
