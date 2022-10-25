package com.goodee.market.trade.myPage;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goodee.market.trade.buyItemList.BuyItemListDTO;
import com.goodee.market.trade.item.ItemDTO;
import com.goodee.market.trade.review.ReviewDTO;
import com.goodee.market.trade.sellItemList.SellItemListDTO;

@Repository
public class MyPageDAO implements MyPageInterface{
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.goodee.market.trade.myPage.MyPageDAO.";
	
	
		
	//찜 목록
	
	
	//판매 리스트
	@Override
	public List<ItemDTO> getSellItemList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE +"getSellItemList");
	}
	
	


	//구매 리스트
	@Override
	public List<ItemDTO> getBuyItemList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"getBuyItemList");
	}
	
	
	//작성한 후기글 리스트
	@Override
	public List<ReviewDTO> getReviewList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"getReviewList");
	}
	
	
}
