package com.goodee.market.meetingboard.comment;

import com.goodee.market.member.MemberDTO;
import com.goodee.market.member.MemberFileDTO;
import com.goodee.market.util.CommentDTO;

public class MeetingBoardCommentDTO extends CommentDTO {

	private Long meetingBoardNum;
	private MemberDTO memberDTO;
	private MemberFileDTO memberFileDTO;

	public Long getMeetingBoardNum() {
		return meetingBoardNum;
	}

	public void setMeetingBoardNum(Long meetingBoardNum) {
		this.meetingBoardNum = meetingBoardNum;
	}

	public MemberDTO getMemberDTO() {
		return memberDTO;
	}

	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}

	public MemberFileDTO getMemberFileDTO() {
		return memberFileDTO;
	}

	public void setMemberFileDTO(MemberFileDTO memberFileDTO) {
		this.memberFileDTO = memberFileDTO;
	}
	
}
