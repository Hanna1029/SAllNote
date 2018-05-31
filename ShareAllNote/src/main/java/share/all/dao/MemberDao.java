package share.all.dao;

import java.util.List;

import share.all.dto.HanGang;
import share.all.dto.Member;

public interface MemberDao {

	// 회원가입
	public void registerMember(Member member);
	
	// 회원 정보 가져오기 
	public Member getMember(String id);
	
	// 프로필 사진 변경
	public void changeProfile(String id, String fpath2);
	
	// 비밀번호 변경
	public void changePwd(String id, String password);
	
	// jsonData insert
	public void insertJsonData(List<HanGang> hanlist);
}
