package com.goodee.market.item;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ItemDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.goodee.market.item.ItemDAO.";
	
	   //fileDetail
//		public ItemImageDTO getFileDetail(ItemImageDTO itemImageDTO)throws Exception;
		
		//fileDelete
//		public int setFileDelete(ItemImageDTO itemImageDTO)throws Exception;
		
		//file
//		public int setAddFile(ItemImageDTO itemImageDTO)throws Exception;
		
	
	public ItemDTO getDetail(ItemDTO itemDTO)throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getDetail",itemDTO);
	}
	
	public int setAdd(ItemDTO itemDTO)throws Exception {
		
		return sqlSession.insert(NAMESPACE+"setAdd", itemDTO);
	}

	public int setUpdate(ItemDTO itemDTO)throws Exception {
		
		return sqlSession.update(NAMESPACE+"setUpdate", itemDTO);
	}
	public int setDelete(ItemDTO itemDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", itemDTO);
	}
	
		
	}

