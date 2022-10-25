package com.goodee.market.meetingboard.member;

import com.goodee.market.meetingboard.MeetingBoardDTO;
import com.goodee.market.member.MemberDTO;
import com.goodee.market.member.MemberFileDTO;

public class MeetingBoardMemberDTO {

	private Long mbmNum;
	private Long hostMemberNum;
	private Long meetingBoardNum;
	private Long requestMemberNum;
	private Integer approvalStatus;
	private String approvalContents;
	
	private MemberDTO memberDTO;
	private MeetingBoardDTO meetingBoardDTO;
	private MemberFileDTO memberFileDTO;
	
	public Long getMbmNum() {
		return mbmNum;
	}
	public void setMbmNum(Long mbmNum) {
		this.mbmNum = mbmNum;
	}
	public Long getHostMemberNum() {
		return hostMemberNum;
	}
	public void setHostMemberNum(Long hostMemberNum) {
		this.hostMemberNum = hostMemberNum;
	}
	public Long getMeetingBoardNum() {
		return meetingBoardNum;
	}
	public void setMeetingBoardNum(Long meetingBoardNum) {
		this.meetingBoardNum = meetingBoardNum;
	}
	public Long getRequestMemberNum() {
		return requestMemberNum;
	}
	public void setRequestMemberNum(Long requestMemberNum) {
		this.requestMemberNum = requestMemberNum;
	}
	public Integer getApprovalStatus() {
		return approvalStatus;
	}
	public void setApprovalStatus(Integer approvalStatus) {
		this.approvalStatus = approvalStatus;
	}
	public String getApprovalContents() {
		return approvalContents;
	}
	public void setApprovalContents(String approvalContents) {
		this.approvalContents = approvalContents;
	}
	public MemberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	public MeetingBoardDTO getMeetingBoardDTO() {
		return meetingBoardDTO;
	}
	public void setMeetingBoardDTO(MeetingBoardDTO meetingBoardDTO) {
		this.meetingBoardDTO = meetingBoardDTO;
	}
	public MemberFileDTO getMemberFileDTO() {
		return memberFileDTO;
	}
	public void setMemberFileDTO(MemberFileDTO memberFileDTO) {
		this.memberFileDTO = memberFileDTO;
	}
	
}
