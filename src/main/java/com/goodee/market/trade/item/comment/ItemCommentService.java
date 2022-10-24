package com.goodee.market.trade.item.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodee.market.meetingboard.comment.MeetingBoardCommentDAO;
import com.goodee.market.meetingboard.comment.MeetingBoardCommentDTO;
import com.goodee.market.meetingboard.util.MeetingBoardCommentPager;

@Service
public class ItemCommentService {
	
	
	@Autowired
	private ItemCommentDAO itemCommentDAO;

	public int commentAdd(ItemCommentDTO itemCommentDTO) throws Exception {
		return itemCommentDAO.commentAdd(itemCommentDTO);
	}
	
//	public List<MeetingBoardCommentDTO> getCommentList(MeetingBoardCommentPager meetingBoardCommentPager) throws Exception {
//		
//		Long totalCount = meetingBoardCommentDAO.getTotalCount(meetingBoardCommentPager);
//		meetingBoardCommentPager.makePage(totalCount);
//		meetingBoardCommentPager.getRowNum();
//		
//		return meetingBoardCommentDAO.getCommentList(meetingBoardCommentPager);
//	}
//	
//	public int setCommentDelete(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
//		return meetingBoardCommentDAO.setCommentDelete(meetingBoardCommentDTO);
//	}
//	
//	public List<MeetingBoardCommentDTO> getMyCommentList(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
//		return meetingBoardCommentDAO.getMyCommentList(meetingBoardCommentDTO);
//	}
//	

}
