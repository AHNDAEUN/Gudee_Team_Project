package com.goodee.market.trade.item;

import java.util.List;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitterReturnValueHandler;

import com.goodee.market.trade.review.ReviewDTO;
import com.goodee.market.util.MainPager;
import com.goodee.market.util.Pager;


@Repository
public class ItemDAO  {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.goodee.market.trade.item.ItemDAO.";
	
	
	
	  // fileDetail
		public ItemImageDTO getFileDetail(ItemImageDTO itemImageDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getFileDetail", itemImageDTO);
		}
	public int setFileDelete(ItemImageDTO itemImageDTO)throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", itemImageDTO);
	}
	
	public int setAddFile(ItemImageDTO itemImageDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAddFile", itemImageDTO);
	}
	
	 
	public Long getCount(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}
	
	public Long getMainCount(MainPager mainPager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"getMainCount", mainPager);
	}
	
	
	public ItemDTO getDetail(ItemDTO itemDTO)throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getDetail",itemDTO);
	}
	
	
	public int setAdd(ItemDTO itemDTO, MultipartFile[] files, ServletContext servletContext) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE+"setAdd", itemDTO);

	}
	
	public int setUpdate(ItemDTO itemDTO)throws Exception {
		
		return sqlSession.update(NAMESPACE+"setUpdate", itemDTO);
	}
	
	public int setDelete(ItemDTO itemDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", itemDTO);
	}

	
	
	public List<ItemDTO> getList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList",pager);
	}

	
	public List<ItemDTO> getTradeMain(MainPager mainPager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getTradeMain", mainPager);
	}

	
	public List<ItemDTO> getHeartList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getHeartList", pager);
	}

		
	}

