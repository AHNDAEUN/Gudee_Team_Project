package com.goodee.market.meetingboard.like;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MeetingLikeService {
	
	@Autowired
	private MeetingLikeDAO meetingLikeDAO;
	
	public int setLike(MeetingLikeDTO meetingLikeDTO) throws Exception {
		return meetingLikeDAO.setLike(meetingLikeDTO);
	}

	public boolean getLikeExist(MeetingLikeDTO meetingLikeDTO) throws Exception {
		int exist = meetingLikeDAO.getLikeExist(meetingLikeDTO);
		boolean isExist = false;
		
		if(exist == 1) {
			isExist = true;
		}
		
		return isExist;
	}
	
	public int setUnlike(MeetingLikeDTO meetingLikeDTO) throws Exception {
		return meetingLikeDAO.setUnlike(meetingLikeDTO);
	}
	
}
