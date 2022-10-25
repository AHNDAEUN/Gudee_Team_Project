package com.goodee.market.meetingboard.util;

import org.springframework.stereotype.Component;

@Component
public class MeetingBoardCommentPager {

	private Long startRow;
	private Long lastRow;
	private Long meetingBoardNum;
	private Long page;
	private Long perPage;
	private Long totalPage;
	
	public void makePage(Long totalCount) {
		this.totalPage = totalCount / this.getPerPage();
		if(totalCount % this.getPerPage() != 0) {
			this.totalPage += 1;
		}
	}
	
	public void getRowNum() {
		this.startRow = ((this.getPage() - 1) * this.getPerPage()) + 1;
		this.lastRow = (this.getPage() * this.getPerPage());
	}
	
	public Long getStartRow() {
		return startRow;
	}
	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}
	public Long getLastRow() {
		return lastRow;
	}
	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}
	public Long getMeetingBoardNum() {
		return meetingBoardNum;
	}
	public void setMeetingBoardNum(Long meetingBoardNum) {
		this.meetingBoardNum = meetingBoardNum;
	}
	public Long getPage() {
		if(this.page == null || this.page < 1) {
			this.page = 1L;
		}
		
		return page;
	}
	public void setPage(Long page) {
		this.page = page;
	}
	public Long getPerPage() {
		if(this.perPage == null || this.perPage < 1) {
			this.perPage = 5L;
		}
		
		return perPage;
	}
	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}
	public Long getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}
	
}
