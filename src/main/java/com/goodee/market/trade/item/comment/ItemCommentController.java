package com.goodee.market.trade.item.comment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.goodee.market.meetingboard.comment.MeetingBoardCommentDTO;
import com.goodee.market.meetingboard.comment.MeetingBoardCommentService;
import com.goodee.market.meetingboard.util.MeetingBoardCommentPager;
import com.goodee.market.member.MemberDTO;


@Controller
@RequestMapping("/item/*")
public class ItemCommentController {

	
	@Autowired
	private ItemCommentService itemCommentService;
	
	@PostMapping("commentadd")
	@ResponseBody
	public String commentAdd(ItemCommentDTO itemCommentDTO) throws Exception {
		int result = itemCommentService.commentAdd(itemCommentDTO);
		if(result == 0) {
			System.out.println("댓글 작성 실패");
		}
		
		String jsonResult = "{\"result\" : \"" + result + "\"}";
		
		return jsonResult;
	}
	
//	@GetMapping("list")
//	@ResponseBody
//	public Map<String, Object> getCommentList(ItemCommentDTO itemCommentDTO) throws Exception {
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		List<ItemCommentDTO> commentList = itemCommentService.getCommentList(itemCommentDTO);
//		
//		map.put("commentList", commentList);
//		map.put("Pager", Pager);
//		
//		return map;
//		
//	
//	
//	@PostMapping("delete")
//	@ResponseBody
//	public int setCommentDelete(ItemCommentDTO itemCommentDTO) throws Exception {
//		int result = itemCommentService.setCommentDelete(itemCommentDTO);
//		
//		return result;
//	}
	
}
