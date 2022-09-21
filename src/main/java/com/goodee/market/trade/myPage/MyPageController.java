package com.goodee.market.trade.myPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/mmm/*")
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	@GetMapping("list")
	public ModelAndView getSellItemList () throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("getSellItemList", myPageService.getSellItemList());
		mv.setViewName("mypage/sellitemlist");
		return mv;
	}

}
