package share.all.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import share.all.dao.MemberDao;
import share.all.dto.HanGang;
import share.all.dto.Member;

@Service
public class MemberService {
	
	@Autowired
	private SqlSession session;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void registerMember(Member member) {
		
		// 비밀번호 암호화해서 다시 set
		member.setPassword(this.bCryptPasswordEncoder.encode(member.getPassword()));
		member.setProfile_img("/resources/img/logo.jpg");
		MemberDao dao = session.getMapper(MemberDao.class);
		dao.registerMember(member);
		
	}
	
	public Member getMember(String id) {
		MemberDao dao = session.getMapper(MemberDao.class);
		Member member = dao.getMember(id);
		return member;
	}
	
	public void changeProfile(String id, String fpath2) {
		
		MemberDao dao = session.getMapper(MemberDao.class);
		dao.changeProfile(id, fpath2);
		
	}
	
	public void changePwd(String id, String password) {
		
		String pwd = bCryptPasswordEncoder.encode(password);
		MemberDao dao = session.getMapper(MemberDao.class);
		dao.changePwd(id, pwd);
	}
	
	public void insertJsonData(List<HanGang> hanlist) {
		
		MemberDao dao = session.getMapper(MemberDao.class);
		
		dao.insertJsonData(hanlist);
	}

}
