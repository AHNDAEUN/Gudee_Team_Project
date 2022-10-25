package com.goodee.market.trade.tradingItem;

import java.sql.Date;

public class TradingItemDTO {
	
	private Long plannedDealNum;
	private Long itemNum;
	private Long memberNum;
	private Long realBuyer;
	private Date plannedDealDate;
	private Long sellerRe; //판매자 응답 - 거래 완료 확인 용
	private Long buyerRe; //구매자 응답
	
//-------------------------------------------	
	public Long getPlannedDealNum() {
		return plannedDealNum;
	}
	public void setPlannedDealNum(Long plannedDealNum) {
		this.plannedDealNum = plannedDealNum;
	}
	public Long getItemNum() {
		return itemNum;
	}
	public void setItemNum(Long itemNum) {
		this.itemNum = itemNum;
	}
	public Long getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}
	public Long getRealBuyer() {
		return realBuyer;
	}
	public void setRealBuyer(Long realBuyer) {
		this.realBuyer = realBuyer;
	}
	public Date getPlannedDealDate() {
		return plannedDealDate;
	}
	public void setPlannedDealDate(Date plannedDealDate) {
		this.plannedDealDate = plannedDealDate;
	}
	public Long getSellerRe() {
		return sellerRe;
	}
	public void setSellerRe(Long sellerRe) {
		this.sellerRe = sellerRe;
	}
	public Long getBuyerRe() {
		return buyerRe;
	}
	public void setBuyerRe(Long buyerRe) {
		this.buyerRe = buyerRe;
	}
	
	

}
