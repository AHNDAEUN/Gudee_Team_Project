package com.goodee.market.meetingboard.util;

public class MeetingBoardMemberPager extends MeetingBoardPager {
	
	private Long hostMemberNum;
	private Long meetingBoardNum;

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

}
