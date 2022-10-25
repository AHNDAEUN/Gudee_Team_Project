package com.goodee.market.meetingboard.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.goodee.market.meetingboard.MeetingBoardDTO;
import com.goodee.market.meetingboard.util.MeetingBoardMemberPager;

@Controller
@RequestMapping(value = "/mbm/*")
public class MeetingBoardMemberController {

	@Autowired
	private MeetingBoardMemberService meetingBoardMemberService;
	
	@PostMapping("add")
	@ResponseBody
	public Map<String, Integer> setAddApproval(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		int result = meetingBoardMemberService.setAddMeetingBoardMember(meetingBoardMemberDTO);
		map.put("result", result);
		
		return map;
		
	}
	
	@PostMapping("addOwner")
	public void setAddOwnerApperoval(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		
	}
	
	@PostMapping("delete")
	@ResponseBody
	public Map<String, Integer> setDeleteApproval(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		int result = meetingBoardMemberService.setDeleteMeetingBoardMember(meetingBoardMemberDTO);
		map.put("result", result);
		
		return map;
		
	}
	
	@GetMapping("mylist")
	public ModelAndView getMyApproval(MeetingBoardMemberPager pager) throws Exception {
		List<MeetingBoardDTO> myList = meetingBoardMemberService.getMyList(pager);
		ModelAndView mv = new ModelAndView();
		mv.addObject("myList", myList);
		mv.addObject("pager", pager);
		mv.setViewName("meetingboard/myList");
		
		return mv;
	}
	
	@GetMapping("myApprovalCount")
	@ResponseBody
	public Long getMyApprovalCount(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		long result = meetingBoardMemberService.getMyApprovalCount(meetingBoardMemberDTO);
		return result;
	}
	
	@GetMapping("myApprovalList")
	public ModelAndView getMyApprovalList(MeetingBoardMemberPager pager) throws Exception {
		List<MeetingBoardMemberDTO> myApprovalList = meetingBoardMemberService.getMyApprovalList(pager);
		ModelAndView mv = new ModelAndView();
		mv.addObject("myApprovalList", myApprovalList);
		mv.addObject("pager", pager);
		mv.setViewName("meetingboard/myApprovalList");
		
		return mv;
	}
	
	@PostMapping("myApprovalAccept")
	@ResponseBody
	public int setApprovalAccept(MeetingBoardMemberDTO meetingBoardMemberDTO, Long mbNum) throws Exception {
		int result = meetingBoardMemberService.setApprovalAccept(meetingBoardMemberDTO, mbNum);
		
		return result;
	}
	
	@PostMapping("myApprovalDenie")
	@ResponseBody
	public int setApprovalDenie(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		int result = meetingBoardMemberService.setApprovalDenie(meetingBoardMemberDTO);
		
		return result;
	}
	
	@GetMapping("detailJoinList")
	@ResponseBody
	public Map<String, Object> getDetailJoinList(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("detailJoinList", meetingBoardMemberService.getDetailJoinList(meetingBoardMemberDTO));
		return map;
	}

	@GetMapping("allCount")
	@ResponseBody
	public int getAllApprovalCount(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception{
		int result = meetingBoardMemberService.getAllApprovalCount(meetingBoardMemberDTO);
		
		return result;
	}
	
	@GetMapping("soonListCount")
	@ResponseBody
	public int getSoonListCount(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		int result = meetingBoardMemberService.getSoonListCount(meetingBoardMemberDTO);
		
		return result;
	}
	
	@GetMapping("mySoonList")
	public ModelAndView getSoonList(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		List<MeetingBoardMemberDTO> soonList = meetingBoardMemberService.getSoonList(meetingBoardMemberDTO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("soonList", soonList);
		mv.setViewName("meetingboard/mySoonList");
		
		return mv;
	}
	
}
