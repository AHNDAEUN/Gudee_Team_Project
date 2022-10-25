package com.goodee.market.trade.review;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.goodee.market.util.Pager;

@Controller
@RequestMapping("/trade/review/*")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	
	//리뷰 메인
	@GetMapping(value = "main")
	public ModelAndView getReviewMain( Pager pager)throws Exception {
		System.out.println("review");
		
		ModelAndView mv = new ModelAndView();
		List<ReviewDTO> ar = reviewService.getReviewMain(pager);
	
		mv.addObject("review", ar);
		mv.addObject("pager", pager);
		mv.setViewName("trade/review/main");
		return mv;
	}
	
	
	//리뷰 상세
	@GetMapping(value="detail")
	public ModelAndView getDetail(Long num, ModelAndView mv) throws Exception {
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setReviewNum(num);
		System.out.println("detail 실행");
		reviewDTO = reviewService.getDetail(reviewDTO);
		mv.addObject("dto", reviewDTO);
		mv.setViewName("trade/review/detail");
		
		return mv;		
	} 
	

	//글작성
	@GetMapping(value="add")
	public String setAdd(ReviewDTO reviewDTO) throws Exception {
		return "trade/review/add";
	}
	
	
	@PostMapping(value="add")
	public ModelAndView setAdd(ReviewDTO reviewDTO, MultipartFile[] files, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView(); 
		int review = reviewService.setAdd(reviewDTO, files, session.getServletContext());
		mv.setViewName("redirect:./review/main");
		System.out.println("add success");
		return mv;
	}
	
	
	//글수정
	@GetMapping(value="update")
	public ModelAndView setUpdate(ReviewDTO reviewDTO, ModelAndView mv)throws Exception {
		
		mv.setViewName("trade/review/update");
		return mv;
	}
	
	
	@PostMapping(value="update")
	public String setUpdate(ReviewDTO reviewDTO)throws Exception {
		int result = reviewService.setUpdate(reviewDTO);
	return "redirect:./detail?reviewNum="+reviewDTO.getItemNum();
	}
	
	
	//글삭제
	public String setDelete(ReviewDTO reviewDTO)throws Exception {
	int result = reviewService.setDelete(reviewDTO);
	return "redirect:./review/main";
	}

}
