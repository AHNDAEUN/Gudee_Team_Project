package com.goodee.market.meetingboard;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.market.meetingboard.member.MeetingBoardMemberDTO;
import com.goodee.market.meetingboard.util.MeetingBoardPager;

@Service
public class MeetingBoardService {

	@Autowired
	private MeetingBoardDAO meetingBoardDAO;
	
	@Autowired
	private MeetingBoardFileManager meetingBoardFileManager;
	
	public MeetingBoardDTO getMeetingBoardDetail(MeetingBoardDTO meetingBoardDTO) throws Exception {
		
		meetingBoardDTO = meetingBoardDAO.getMeetingBoardDetail(meetingBoardDTO);
		
		if(meetingBoardDTO.getMeetingBoardHostDemand() == null) {
			meetingBoardDTO.setMeetingBoardHostDemand("주최자 질문 없음");
		}
		
		return meetingBoardDTO;
	}
	
	public List<MeetingBoardDTO> getMeetingBoardList(MeetingBoardPager pager) throws Exception {
		Long totalCount = meetingBoardDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		return meetingBoardDAO.getMeetingBoardList(pager);
	}
	
	public int setMeetingBoardAdd(MeetingBoardDTO meetingBoardDTO, MultipartFile meetingBoardThumnail, ServletContext servletContext) throws Exception{
		
		int result = meetingBoardDAO.setMeetingBoardAdd(meetingBoardDTO);
		String path = "resources/upload/meetingboard";
		
		if(!meetingBoardThumnail.isEmpty()) {
			String fileName = meetingBoardFileManager.saveFile(servletContext, path, meetingBoardThumnail);
			
			MeetingBoardImageDTO meetingBoardImageDTO = new MeetingBoardImageDTO();
			meetingBoardImageDTO.setFileName(fileName);
			meetingBoardImageDTO.setOriName(meetingBoardThumnail.getOriginalFilename());
			meetingBoardImageDTO.setMeetingBoardNum(meetingBoardDTO.getMeetingBoardNum());
			meetingBoardDAO.setMeetingBoardThumnailAdd(meetingBoardImageDTO);
		}
		
		return result;
	}
	
	public int setMeetingBoardUpdate(MeetingBoardDTO meetingBoardDTO, MultipartFile meetingBoardThumnail, ServletContext servletContext) throws Exception {
		
		int result = 0;
		
		if(!meetingBoardThumnail.isEmpty()) {
			MeetingBoardDTO beforeUpdated = meetingBoardDAO.getMeetingBoardDetail(meetingBoardDTO);
			String path = "resources/upload/meetingboard";
			
			if(beforeUpdated.getMeetingBoardImageDTO() != null) {
				MeetingBoardImageDTO meetingBoardImageDTO = new MeetingBoardImageDTO();
				meetingBoardImageDTO.setFileNum(beforeUpdated.getMeetingBoardImageDTO().getFileNum());
				meetingBoardImageDTO = meetingBoardDAO.getMeetingBoardThumnailDetail(meetingBoardImageDTO);
				
				int fileResult = meetingBoardDAO.setMeetingBoardThumnailDelete(meetingBoardImageDTO);
				
				if(fileResult > 0) {
					meetingBoardFileManager.deleteFile(servletContext, path, meetingBoardImageDTO);
				}
			}
			
			String fileName = meetingBoardFileManager.saveFile(servletContext, path, meetingBoardThumnail);
			MeetingBoardImageDTO meetingBoardImageDTO = new MeetingBoardImageDTO();
			meetingBoardImageDTO.setFileName(fileName);
			meetingBoardImageDTO.setOriName(meetingBoardThumnail.getOriginalFilename());
			meetingBoardImageDTO.setMeetingBoardNum(meetingBoardDTO.getMeetingBoardNum());
			meetingBoardDAO.setMeetingBoardThumnailAdd(meetingBoardImageDTO);
			
		}
		
		result = meetingBoardDAO.setMeetingBoardUpdate(meetingBoardDTO);
		
		//return meetingBoardDAO.setMeetingBoardUpdate(meetingBoardDTO);
		return result;
	}
	
	public int setMeetingBoardDelete(MeetingBoardDTO meetingBoardDTO, ServletContext servletContext) throws Exception {
		meetingBoardDTO = meetingBoardDAO.getMeetingBoardDetail(meetingBoardDTO);
		if(meetingBoardDTO.getMeetingBoardImageDTO() != null) {
			MeetingBoardImageDTO meetingBoardImageDTO = meetingBoardDAO.getMeetingBoardThumnailDetail(meetingBoardDTO.getMeetingBoardImageDTO());
			
			String path = "resources/upload/meetingboard";
			int fileResult = meetingBoardDAO.setMeetingBoardThumnailDelete(meetingBoardImageDTO);
			
			if(fileResult > 0) {
				meetingBoardFileManager.deleteFile(servletContext, path, meetingBoardImageDTO);
			}
		}
		
		int result = meetingBoardDAO.setMeetingBoardDelete(meetingBoardDTO);
		
		return result;
		
	}
	
}
