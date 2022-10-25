package com.goodee.market.meetingboard.like;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/mbl/*")
public class MeetingLikeController {
	
	@Autowired
	private MeetingLikeService meetingLikeService;
	
	@PostMapping("like")
	@ResponseBody
	public int addLike(MeetingLikeDTO meetingLikeDTO) throws Exception {
		
		int result = meetingLikeService.setLike(meetingLikeDTO);
		
		return result;
	}
	
	@PostMapping("unlike")
	@ResponseBody
	public int deleteLike(MeetingLikeDTO meetingLikeDTO) throws Exception {
		
		int result = meetingLikeService.setUnlike(meetingLikeDTO);
		
		return result;
		
	}

}
