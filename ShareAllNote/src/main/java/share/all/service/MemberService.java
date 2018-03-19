package share.all.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import share.all.dao.MemberDao;
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
		
		MemberDao dao = session.getMapper(MemberDao.class);
		dao.registerMember(member);
		
	}

}
