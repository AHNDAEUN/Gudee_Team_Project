package com.goodee.market.meetingboard.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodee.market.meetingboard.MeetingBoardDAO;
import com.goodee.market.meetingboard.MeetingBoardDTO;
import com.goodee.market.meetingboard.util.MeetingBoardMemberPager;
import com.goodee.market.meetingboard.util.MeetingBoardPager;

@Service
public class MeetingBoardMemberService {

	@Autowired
	private MeetingBoardMemberDAO meetingBoardMemberDAO;
	
	@Autowired
	private MeetingBoardDAO meetingBoardDAO;
	
	public int setAddMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.setAddMeetingBoardMember(meetingBoardMemberDTO);
	}
	
	public int setAddOwnerMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.setAddOwnerMeetingBoardMember(meetingBoardMemberDTO);
	}

	public boolean getJoinExist(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		Long result = meetingBoardMemberDAO.getJoinExist(meetingBoardMemberDTO);
		boolean isExist = false;
		
		if(result > 0) {
			isExist = true;
		}
		
		return isExist;
		
	}
	
	public int setDeleteMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		int status = meetingBoardMemberDAO.getMeetingBoardMemberStatus(meetingBoardMemberDTO);
		
		if(status == 1) {
			MeetingBoardDTO meetingBoardDTO = new MeetingBoardDTO();
			meetingBoardDTO.setMeetingBoardNum(meetingBoardMemberDTO.getMeetingBoardNum());
			meetingBoardDAO.setMeetingBoardCurrentMemberUpdateMinus(meetingBoardDTO);
		}
		
		return meetingBoardMemberDAO.setDeleteMeetingBoardMember(meetingBoardMemberDTO);
	}
	
	public List<MeetingBoardDTO> getMyList(MeetingBoardMemberPager pager) throws Exception {
		
		Long totalCount = meetingBoardMemberDAO.getMyListCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		return meetingBoardMemberDAO.getMyList(pager);
	}
	
	public Long getMyApprovalCount(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.getMyApprovalCount(meetingBoardMemberDTO);
	}
	
	public List<MeetingBoardMemberDTO> getMyApprovalList(MeetingBoardMemberPager pager) throws Exception {
		MeetingBoardMemberDTO meetingBoardMemberDTO = new MeetingBoardMemberDTO();
		meetingBoardMemberDTO.setHostMemberNum(pager.getHostMemberNum());
		meetingBoardMemberDTO.setMeetingBoardNum(pager.getMeetingBoardNum());
		Long totalApprovalCount = meetingBoardMemberDAO.getMyApprovalCount(meetingBoardMemberDTO);
		
		pager.getNum(totalApprovalCount);
		pager.getRowNum();
		
		return meetingBoardMemberDAO.getMyApprovalList(pager);
		
	}
	
	public int setApprovalAccept(MeetingBoardMemberDTO meetingBoardMemberDTO, Long mbNum) throws Exception {
		
		int result = 0;
		
		MeetingBoardDTO meetingBoardDTO = new MeetingBoardDTO();
		meetingBoardDTO.setMeetingBoardNum(mbNum);
		meetingBoardDTO = meetingBoardDAO.getMeetingBoardDetail(meetingBoardDTO);
		int curMember = meetingBoardDTO.getMeetingBoardCurrentMember();
		int maxMember = meetingBoardDTO.getMeetingBoardMaxMember();
		
		if(curMember < maxMember) {
			result = meetingBoardMemberDAO.setApprovalAccept(meetingBoardMemberDTO);
			meetingBoardDAO.setMeetingBoardCurrentMemberUpdate(meetingBoardDTO);
		}
		
		return result;
	}
	
	public int setApprovalDenie(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.setApprovalDenie(meetingBoardMemberDTO);
	}
	
	public List<MeetingBoardMemberDTO> getDetailJoinList(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.getDetailJoinList(meetingBoardMemberDTO);
	}
	
	public int getAllApprovalCount(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.getAllApprovalCount(meetingBoardMemberDTO);
	}
	
	public int getSoonListCount(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.getSoonListCount(meetingBoardMemberDTO);
	}
	
	public List<MeetingBoardMemberDTO> getSoonList(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.getSoonList(meetingBoardMemberDTO);
	}
	
}
