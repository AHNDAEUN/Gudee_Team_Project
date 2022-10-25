package com.goodee.market.meetingboard.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goodee.market.meetingboard.MeetingBoardDTO;
import com.goodee.market.meetingboard.util.MeetingBoardMemberPager;

@Repository
public class MeetingBoardMemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.goodee.market.meetingboard.member.MeetingBoardMemberDAO.";
	
	public int setAddMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setAddMeetingBoardMember", meetingBoardMemberDTO);
	}
	
	public int setAddOwnerMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setAddOwnerMeetingBoardMember", meetingBoardMemberDTO);
	}
	
	public Long getJoinExist(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getJoinExist", meetingBoardMemberDTO);
	}
	
	public int setDeleteMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setDeleteMeetingBoardMember", meetingBoardMemberDTO);
	}
	
	public List<MeetingBoardDTO> getMyList(MeetingBoardMemberPager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getMyList", pager);
	}
	
	public Long getMyListCount(MeetingBoardMemberPager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getMyListCount", pager);
	}
	
	public Long getMyApprovalCount(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getMyApprovalCount", meetingBoardMemberDTO);
	}
	
	public List<MeetingBoardMemberDTO> getMyApprovalList(MeetingBoardMemberPager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getMyApprovalList", pager);
	}
	
	public int setApprovalAccept(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setApprovalAccept", meetingBoardMemberDTO);
	}
	
	public int setApprovalDenie(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setApprovalDenie", meetingBoardMemberDTO);
	}
	
	public List<MeetingBoardMemberDTO> getDetailJoinList(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getDetailJoinList", meetingBoardMemberDTO);
	}
	
	public int getMeetingBoardMemberStatus(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getMeetingBoardMemberStatus", meetingBoardMemberDTO);
	}
	
	public int getAllApprovalCount(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getAllApprovalCount", meetingBoardMemberDTO);
	}
	
	public int getSoonListCount(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getSoonListCount", meetingBoardMemberDTO);
	}
	
	public List<MeetingBoardMemberDTO> getSoonList(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getSoonList", meetingBoardMemberDTO);
	}
	
}
