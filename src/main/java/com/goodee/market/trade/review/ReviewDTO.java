package com.goodee.market.trade.review;

import com.goodee.market.trade.item.ItemDTO;

public class ReviewDTO extends ItemDTO{
	
	//itemNum
	//memberNum
	
	private Long reviewNum;
	private String reviewTitle;
	private String reviewContent;
	private Integer reviewHit;
	private Integer reviewStar;
	
//-----------------------------------------------	
	public Long getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(Long reviewNum) {
		this.reviewNum = reviewNum;
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
	public Integer getReviewHit() {
		return reviewHit;
	}
	public void setReviewHit(Integer reviewHit) {
		this.reviewHit = reviewHit;
	}
	public Integer getReviewStar() {
		return reviewStar;
	}
	public void setReviewStar(Integer reviewStar) {
		this.reviewStar = reviewStar;
	}
	
	
	

}
