package com.goodee.market.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.goodee.market.meetingboard.MeetingBoardDTO;
import com.goodee.market.meetingboard.MeetingBoardService;
import com.goodee.market.member.MemberDTO;

public class MeetingBoardDeleteInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	private MeetingBoardService meetingBoardService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		Long requestNum = memberDTO.getMemberNum();
		Long num = Long.parseLong(request.getParameter("num"));
		MeetingBoardDTO meetingBoardDTO = new MeetingBoardDTO();
		meetingBoardDTO.setMeetingBoardNum(num);
		meetingBoardDTO = meetingBoardService.getMeetingBoardDetail(meetingBoardDTO);
		
		if(requestNum == meetingBoardDTO.getMeetingBoardWriter()) {
			return true;
		} else {
			response.sendRedirect("/mb/list");
			return false;
		}
		
		//return super.preHandle(request, response, handler);
	}
}
