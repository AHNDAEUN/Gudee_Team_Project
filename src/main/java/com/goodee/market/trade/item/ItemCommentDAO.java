package com.goodee.market.trade.item;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ItemCommentDAO {
	
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.goodee.market.trade.item.ItemCommentDAO.";
	
	
	public int setCommentUpdate(ItemCommentDTO itemCommentDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setCommentUpdate", itemCommentDTO);
	}
	
	public int setCommentDelete(ItemCommentDTO itemCommentDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setCommentDelete", itemCommentDTO);
	}
	
	public Long getCommentListTotalCount(ItemCommentPager itemCommentPager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCommentListTotalCount", itemCommentPager);
	}
	public List<ItemCommentDTO>getCommentList(ItemCommentPager itemCommentPager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getCommentList", itemCommentPager);
	}
	
	public int setCommentAdd(ItemCommentDTO itemCommentDTO)throws Exception {
		return sqlSession.insert(NAMESPACE+"setCommentAdd", itemCommentDTO); 
	}
}
