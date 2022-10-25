package com.goodee.market.trade.myPage;

import java.util.List;


import com.goodee.market.trade.buyItemList.BuyItemListDTO;
import com.goodee.market.trade.item.ItemDTO;
import com.goodee.market.trade.review.ReviewDTO;
import com.goodee.market.trade.sellItemList.SellItemListDTO;

public interface MyPageInterface {
	
	
	//찜 리스트
	//public List<E> getHeartList() throws Exception;
	
	//판매 리스트
	public List<ItemDTO> getSellItemList() throws Exception;
	
	//구매 리스트
	public List<ItemDTO> getBuyItemList() throws Exception;
	
	//작성한 후기글 리스트
	public List<ReviewDTO> getReviewList() throws Exception;

}
