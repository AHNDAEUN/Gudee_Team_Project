package com.goodee.market.meetingboard.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodee.market.meetingboard.util.MeetingBoardCommentPager;

@Service
public class MeetingBoardCommentService {
	
	@Autowired
	private MeetingBoardCommentDAO meetingBoardCommentDAO;

	public int commentAdd(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		return meetingBoardCommentDAO.commentAdd(meetingBoardCommentDTO);
	}
	
	public List<MeetingBoardCommentDTO> getCommentList(MeetingBoardCommentPager meetingBoardCommentPager) throws Exception {
		
		Long totalCount = meetingBoardCommentDAO.getTotalCount(meetingBoardCommentPager);
		meetingBoardCommentPager.makePage(totalCount);
		meetingBoardCommentPager.getRowNum();
		
		return meetingBoardCommentDAO.getCommentList(meetingBoardCommentPager);
	}
	
	public int setCommentDelete(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		return meetingBoardCommentDAO.setCommentDelete(meetingBoardCommentDTO);
	}
	
	public List<MeetingBoardCommentDTO> getMyCommentList(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		return meetingBoardCommentDAO.getMyCommentList(meetingBoardCommentDTO);
	}
	
}
