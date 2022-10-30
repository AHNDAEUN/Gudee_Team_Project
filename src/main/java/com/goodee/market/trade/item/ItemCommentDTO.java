package com.goodee.market.trade.item;

import java.sql.Date;

import com.goodee.market.util.CommentDTO;

public class ItemCommentDTO {

	private Long num;
    private Long itemNum;
    private String writer;
    private String contents;
    private Date regDate;
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public Long getItemNum() {
		return itemNum;
	}
	public void setItemNum(Long itemNum) {
		this.itemNum = itemNum;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
    
    
	
    
}