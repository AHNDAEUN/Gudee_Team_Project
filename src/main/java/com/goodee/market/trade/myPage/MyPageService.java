package com.goodee.market.trade.myPage;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodee.market.trade.buyItemList.BuyItemListDTO;
import com.goodee.market.trade.item.ItemDTO;
import com.goodee.market.trade.review.ReviewDTO;
import com.goodee.market.trade.sellItemList.SellItemListDTO;

@Service
public class MyPageService {
	
	@Autowired
	private MyPageDAO myPageDAO;
	@Autowired
	private MyPageService myPageService;

	
	
	//판매 리스트
	public List<ItemDTO> getSellItemList () throws Exception{
		return myPageDAO.getSellItemList();
	}
	
	//구매 리스트
	public List<ItemDTO> getBuyItemList() throws Exception{
		return myPageDAO.getBuyItemList();
	}
	
	//후기글 리스트
	public List<ReviewDTO> getReviewList () throws Exception{
		return myPageDAO.getReviewList();
	}

}
