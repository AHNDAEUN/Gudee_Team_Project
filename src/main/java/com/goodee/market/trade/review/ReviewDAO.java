package com.goodee.market.trade.review;

import java.util.List;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.market.util.Pager;

@Repository
public class ReviewDAO implements ReviewInterface {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.goodee.market.trade.review.ReviewDAO.";
	
	
	@Override
	public List<ReviewDTO> getReviewMain(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getReviewMain", pager);
	}


	@Override
	public Long getCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}


	@Override
	public ReviewDTO getDetail(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getDetail",reviewDTO);
	}


	@Override
	public int setAdd(ReviewDTO reviewDTO, MultipartFile[] files, ServletContext servletContext) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAdd", reviewDTO);
	}


	@Override
	public int setUpdate(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", reviewDTO);
	}


	@Override
	public int setDelete(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setUpdate", reviewDTO);
	}


	@Override
	public int setAddFile(ReviewImageDTO reviewImageDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAddFile", reviewImageDTO);
	}
	
	

}
