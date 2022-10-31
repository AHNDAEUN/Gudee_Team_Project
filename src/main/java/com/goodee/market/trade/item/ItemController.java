package com.goodee.market.trade.item;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.goodee.market.member.MemberDTO;
import com.goodee.market.trade.review.ReviewDTO;
import com.goodee.market.util.MainPager;
import com.goodee.market.util.Pager;

@Controller
@RequestMapping("/trade/*")
//http://localhost/market/item/detail
public class ItemController{
	
	@Autowired
	private ItemService itemService;
	
	
//	@PostMapping("review")
//	@ResponseBody
//	public int setItemReview()throws Exception {
//		
//		
//		return "redirect:./trade/mypage";
//	}
//	
	
	@PostMapping("fileDelete")
	@ResponseBody
	public int setFileDelete(ItemImageDTO itemImageDTO, HttpSession session)throws Exception {
		int result = itemService.setFileDelete(itemImageDTO,session.getServletContext());
		return result;
	}
	
	
	//메인페이지
	@GetMapping(value = "main")
	public ModelAndView getTradeMain(MainPager mainPager)throws Exception {
		System.out.println("중고 메인~.~");
		ModelAndView mv = new ModelAndView();
		List<ItemDTO> ar = itemService.getTradeMain(mainPager);
		mv.addObject("list", ar);	
		mv.addObject("pager", mainPager);
		mv.setViewName("trade/main");
		return mv;
	}

	
	//카테고리 메인
	@GetMapping(value = "category")
	public void getList(@RequestParam(value = "filter", required = false) String filter, Pager pager)throws Exception {
		System.out.println("category");
		System.out.println(filter);
		
		ModelAndView mv = new ModelAndView();
		List<ItemDTO> ar =itemService.getList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		
		mv.setViewName("trade/category");
		
	}
	
	
	//찜목록
	@GetMapping(value = "heartlist")
	public ModelAndView getHeartList(Pager pager)throws Exception {
		System.out.println("찜.");
		ModelAndView mv =new ModelAndView();
		List<ItemDTO> ar = itemService.getHeartList(pager);
		
		mv.addObject("list", ar);	
		mv.addObject("pager", pager);
		mv.setViewName("trade/heartlist");
		return mv;
	}

	
	//글상세
	@GetMapping(value="detail")
	public ModelAndView getDetail(Long num, ModelAndView mv) throws Exception {
		ItemDTO itemDTO =new ItemDTO();
		itemDTO.setItemNum(num);
		itemDTO = itemService.getDetail(itemDTO);
		System.out.println(itemDTO.getItemPrice());
		mv.addObject("dto", itemDTO);
		mv.setViewName("trade/detail");
		
		return mv;		
	} 
	

	//글작성
	@GetMapping(value="add")
	public String setAdd(ItemDTO itemDTO) throws Exception {
		return "trade/add";
	}
	
	
	@PostMapping(value="add")
	public ModelAndView setAdd(ItemDTO itemDTO,MultipartFile[] files,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView(); 
		int item= itemService.setAdd(itemDTO,files,session.getServletContext());
		MemberDTO memberDTO= (MemberDTO)session.getAttribute("member");
		mv.addObject("itemDTO",itemDTO);
		mv.addObject("member", memberDTO);
		mv.setViewName("redirect:./category");
		System.out.println("add success");
		return mv;
	}
	
	
	//글수정
	@GetMapping(value="update")
	public ModelAndView setUpdate(Long num, ModelAndView mv)throws Exception {
		ItemDTO itemDTO = new ItemDTO();
		itemDTO.setItemNum(num);
		itemDTO = itemService.getDetail(itemDTO);
		mv.addObject("itemDTO", itemDTO);
		
		mv.setViewName("trade/update");
		return mv;
	
	}
	@PostMapping(value="update")
	public String setUpdate(ItemDTO itemDTO, MultipartFile[] files, HttpSession session)throws Exception {
		int result= itemService.setUpdate(itemDTO,files,session.getServletContext());
	return "redirect:./detail?num="+itemDTO.getItemNum();
	}
	
	
	
	//글삭제
	@GetMapping("delete")
	public String setDelete(Long num)throws Exception {
	ItemDTO itemDTO = new ItemDTO();
	itemDTO.setItemNum(num);
	int result= itemService.setDelete(itemDTO);
	return "redirect:./main";
	}
	

	
	
}
