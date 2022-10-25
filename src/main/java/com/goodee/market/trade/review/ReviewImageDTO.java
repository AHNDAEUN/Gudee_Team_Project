package com.goodee.market.trade.review;

import com.goodee.market.util.FileDTO;

public class ReviewImageDTO extends FileDTO{
	
	private Long reviewNum;
	private Long fileNum;
	
	
	public Long getReviewNum() {
		return reviewNum;
	}
	
	
	public void setReviewNum(Long reviewNum) {
		this.reviewNum = reviewNum;
	}
	
	
	public Long getFileNum() {
		return fileNum;
	}
	
	
	public void setFileNum(Long fileNum) {
		this.fileNum = fileNum;
	}
	
	

}
