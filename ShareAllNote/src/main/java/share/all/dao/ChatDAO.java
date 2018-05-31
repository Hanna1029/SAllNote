package share.all.dao;

import java.util.List;

import share.all.dto.Chatting;
import share.all.dto.Member;

public interface ChatDAO {

	public int InsertChattingInformation(Chatting chat, String id);
	
	public int MakingRoomOrderbyGetInformation(String id);
	
	public List<Member> getNowUserList();
	
	
}
