package com.goodee.market.member;

import com.goodee.market.util.FileDTO;

public class MemberFileDTO extends FileDTO{
	
	private Long memberNum;

	public Long getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}
	
}
