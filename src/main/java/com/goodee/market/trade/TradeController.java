package com.goodee.market.trade;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/trade/*")
public class TradeController {
	
	
	
	//메인페이지
	@GetMapping(value = "main")
	public String getTradeMain () throws Exception{
		System.out.println("중고 메인");
		return "trade/main";
	}

	
	//카테고리 페이지
	@GetMapping(value = "category")
	public String getTradeDetail () throws Exception{
		System.out.println("중고 카테고리");
		return "trade/category";
	}
	
}
