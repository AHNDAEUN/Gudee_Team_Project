package com.goodee.market.trade.review;

import com.goodee.market.trade.item.ItemDTO;

public class ReviewDTO extends ItemDTO{
	
	//itemNum
	//memberNum
	
	private Long reviewNum;
	private Long realBuyer;
	private String reviewTitle;
	private String reviewContent;
	
//-----------------------------------------------	
	public Long getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(Long reviewNum) {
		this.reviewNum = reviewNum;
	}
	public Long getRealBuyer() {
		return realBuyer;
	}
	public void setRealBuyer(Long realBuyer) {
		this.realBuyer = realBuyer;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	
	

}
