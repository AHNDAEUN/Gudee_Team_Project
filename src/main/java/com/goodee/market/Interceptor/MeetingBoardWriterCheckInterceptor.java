package com.goodee.market.Interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.goodee.market.meetingboard.MeetingBoardDTO;
import com.goodee.market.member.MemberDTO;

public class MeetingBoardWriterCheckInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HttpSession session = request.getSession();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		
		Map<String, Object> map = modelAndView.getModel();
		MeetingBoardDTO meetingBoardDTO = (MeetingBoardDTO)map.get("meetingBoardDTO");
		
		if(!(memberDTO.getMemberNum() == meetingBoardDTO.getMeetingBoardWriter())) {
			String message = "작성자만 가능합니다";
			String url = "/mb/list";
			modelAndView.addObject("message", message);
			modelAndView.addObject("url", url);
			modelAndView.setViewName("common/result");
		}
		
		super.postHandle(request, response, handler, modelAndView);
	}
	
}
