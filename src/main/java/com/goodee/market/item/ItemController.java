package com.goodee.market.item;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.goodee.market.member.MemberDTO;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/item/*")
//http://localhost/market/item/detail
public class ItemController {
	
	@Autowired
	private ItemService itemService;
	
	//파일 삭제
//	public int setFileDelete(ItemDTO itemDTO)throws Exception{
//	}
	
	
	//글상세
	@GetMapping(value="detail")
	public ModelAndView getDetail(ItemDTO itemDTO) throws Exception {
		
		ModelAndView mv =new ModelAndView();
		
		System.out.println("detail 실행");
		
		mv.setViewName("item/detail");
		
		return mv;
		
		
	} 
	
	//글작성
	@GetMapping(value="add")
	public String setAdd(ItemDTO itemDTO) throws Exception {
		return "item/add";
	}
	@PostMapping(value="add")
	public ModelAndView setAdd(ItemDTO itemDTO, MultipartFile[] files) throws Exception {
		ModelAndView mv =new ModelAndView();
		mv.setViewName("item/add");
		
		return mv;
		
	}
	
	//글수정
	@GetMapping(value="update")
	public ModelAndView setUpdate(ItemDTO itemDTO, ModelAndView mv)throws Exception {
		
		mv.setViewName("item/update");
		return mv;
	
	}
	@PostMapping(value="update")
	public String setUpdate(ItemDTO itemDTO)throws Exception {
		int result= itemService.setUpdate(itemDTO);
	return "redirect:./detail?itemNum="+itemDTO.getItemNum();
	}
	
	//글삭제
	public String setDelete(ItemDTO itemDTO)throws Exception {
	int result= itemService.setDelete(itemDTO);
	return "redirect:./list";
	}
	
}
