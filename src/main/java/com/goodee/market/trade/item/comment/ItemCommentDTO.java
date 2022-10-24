package com.goodee.market.trade.item.comment;

import java.sql.Date;

import com.goodee.market.member.MemberDTO;
import com.goodee.market.util.CommentDTO;

public class ItemCommentDTO extends CommentDTO{
	
	private Long itemNum;
	private Long memberNum;
	
	

	public Long getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}

	public Long getItemNum() {
		return itemNum;
	}

	public void setItemNum(Long itemNum) {
		this.itemNum = itemNum;
	}
	
	
	

}
