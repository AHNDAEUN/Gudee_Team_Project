package com.goodee.market.trade.review;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.market.util.FileManager;
//import com.goodee.market.util.FileManager;
import com.goodee.market.util.Pager;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Autowired
	private FileManager fileManager;
	
	
	//리뷰 메인
	public List<ReviewDTO> getReviewMain (Pager pager) throws Exception{
		Long totalCount = reviewDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return reviewDAO.getReviewMain(pager);
	}
	
	
	//상세보기
	public ReviewDTO getDetail(ReviewDTO reviewDTO)throws Exception {
		return reviewDAO.getDetail(reviewDTO);
	} 

	
	//글쓰기
	public int setAdd(ReviewDTO reviewDTO, MultipartFile[] files,ServletContext servletContext)throws Exception {
		// 먼저 추가되어야 글번호 생성됨
		int result = reviewDAO.setAdd(reviewDTO, files, servletContext);
		String path = "resources/upload/trade/review";
		
		for (MultipartFile multipartFile: files) {
		if(multipartFile.isEmpty()) {
			continue;
		}	
			String fileName = fileManager.saveFile(path, servletContext, multipartFile);
			ReviewImageDTO reviewImageDTO = new ReviewImageDTO();
			reviewImageDTO.setFileName(fileName);
			reviewImageDTO.setOriName(multipartFile.getOriginalFilename());
			reviewImageDTO.setReviewNum(reviewDTO.getReviewNum());
			reviewDAO.setAddFile(reviewImageDTO);
		}
		return result;
	}
	
	
	//수정
	public int setUpdate(ReviewDTO reviewDTO)throws Exception {
		return reviewDAO.setUpdate(reviewDTO);
	}
	
	
	//삭제
	public int setDelete(ReviewDTO reviewDTO)throws Exception {
		return reviewDAO.setDelete(reviewDTO);
	}

	
}
