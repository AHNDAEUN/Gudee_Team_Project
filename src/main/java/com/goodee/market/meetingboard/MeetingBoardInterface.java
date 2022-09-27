package com.goodee.market.meetingboard;

import java.util.List;

import com.goodee.market.meetingboard.util.MeetingBoardPager;

public interface MeetingBoardInterface {
	
	public MeetingBoardDTO getMeetingBoardDetail(MeetingBoardDTO meetingBoardDTO) throws Exception;

	public List<MeetingBoardDTO> getMeetingBoardList(MeetingBoardPager pager) throws Exception;
	
	public int setMeetingBoardAdd(MeetingBoardDTO meetingBoardDTO) throws Exception;
	
	public int setMeetingBoardThumnailAdd(MeetingBoardImageDTO meetingBoardImageDTO) throws Exception;
	
	public Long getCount(MeetingBoardPager pager) throws Exception;
	
	public int setMeetingBoardUpdate(MeetingBoardDTO meetingBoardDTO) throws Exception;
	
	public MeetingBoardImageDTO getMeetingBoardThumnailDetail(MeetingBoardImageDTO meetingBoardImageDTO) throws Exception;
	
	public int setMeetingBoardThumnailDelete(MeetingBoardImageDTO meetingBoardImageDTO) throws Exception;
	
	public int setMeetingBoardDelete(MeetingBoardDTO meetingBoardDTO) throws Exception;
	
}
