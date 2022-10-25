package com.goodee.market.meetingboard.comment;

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

import com.goodee.market.meetingboard.util.MeetingBoardCommentPager;
import com.goodee.market.member.MemberDTO;

@Controller
@RequestMapping(value = "/mbc/*")
public class MeetingBoardCommentController {
	
	@Autowired
	private MeetingBoardCommentService meetingBoardCommentService;
	
	@PostMapping("add")
	@ResponseBody
	public String commentAdd(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		int result = meetingBoardCommentService.commentAdd(meetingBoardCommentDTO);
		
		if(result == 0) {
			System.out.println("댓글 작성 실패");
		}
		
		String jsonResult = "{\"result\" : \"" + result + "\"}";
		
		return jsonResult;
	}
	
	@GetMapping("list")
	@ResponseBody
	public Map<String, Object> getCommentList(MeetingBoardCommentPager meetingBoardCommentPager) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<MeetingBoardCommentDTO> commentList = meetingBoardCommentService.getCommentList(meetingBoardCommentPager);
		
		map.put("commentList", commentList);
		map.put("meetingBoardCommentPager", meetingBoardCommentPager);
		
		return map;
		
	}
	
	@PostMapping("delete")
	@ResponseBody
	public int setCommentDelete(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		int result = meetingBoardCommentService.setCommentDelete(meetingBoardCommentDTO);
		
		return result;
	}
	
	@GetMapping("mypage")
	public ModelAndView getMyPageCommentList(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		MeetingBoardCommentDTO meetingBoardCommentDTO = new MeetingBoardCommentDTO();
		meetingBoardCommentDTO.setWriter(memberDTO.getMemberNum());
		
		List<MeetingBoardCommentDTO> myCommentList = meetingBoardCommentService.getMyCommentList(meetingBoardCommentDTO);
		
		mv.addObject("myCommentList", myCommentList);
		mv.setViewName("meetingboard/test");
		
		return mv;
	}

}
