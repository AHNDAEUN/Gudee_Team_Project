package com.goodee.market.meetingboard.like;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mbl/*")
public class MeetingLikeController {
	
	@PostMapping("like")
	public String addLike() throws Exception {
		
		
		
		return "";
	}

}
