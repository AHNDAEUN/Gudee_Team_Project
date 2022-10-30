package com.goodee.market.trade.item;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ItemCommentDAO {
	
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.goodee.market.trade.item.ItemCommentDAO.";
	
	
	public int setCommentAdd(ItemCommentDTO itemCommentDTO)throws Exception {
		return sqlSession.insert(NAMESPACE+"setCommentAdd", itemCommentDTO); 
	}
}
