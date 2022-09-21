package com.goodee.market.trade.buyItemList;

import com.goodee.market.trade.tradingItem.TradingItemDTO;

public class BuyItemListDTO extends TradingItemDTO{

	//realBuyer
	//memberNum
	//itemNum
	
	private Long buyItemNum;

	public Long getBuyItemNum() {
		return buyItemNum;
	}

	public void setBuyItemNum(Long buyItemNum) {
		this.buyItemNum = buyItemNum;
	}
	
	
	
}
