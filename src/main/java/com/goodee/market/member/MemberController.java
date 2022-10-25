package com.goodee.market.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.goodee.market.meetingboard.comment.MeetingBoardCommentDTO;
import com.goodee.market.meetingboard.comment.MeetingBoardCommentService;
import com.goodee.market.util.Pager;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private MeetingBoardCommentService meetingBoardCommentService;
	
	//로그인
	@GetMapping("login")
	public void getLogin()throws Exception{
		System.out.println("GET 로그인 실행");
	}
	
	@PostMapping("login")
	public ModelAndView login(MemberDTO memberDTO, HttpSession session)throws Exception{
		System.out.println("POST 로그인 실행");
		
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.getLogin(memberDTO);
		session.setAttribute("memberIsAdmin", 0);
		for(int i = 0; i < memberDTO.getRoleDTOs().size(); i++) {
			if(memberDTO.getRoleDTOs().get(i).getRoleNum() == 1) {
				session.setAttribute("memberIsAdmin", 1);
			}
		}
		session.setAttribute("member", memberDTO);
		mv.addObject("memberDTO", memberDTO);
		
		String message = "로그인 실패";
		String url = "login";
		if(memberDTO != null) {
			message = "로그인 성공";
			url = "../";
		}
		mv.addObject("message", message);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		return mv;
		
	}
	
	//약관동의
	@GetMapping("agree")
	public void agree()throws Exception{
		System.out.println("약관동의 실행");
	}
	
	//회원가입
	@GetMapping("join")
	public void join()throws Exception{
		System.out.println("GET 회원가입 실행");
	}
	
	@PostMapping("join")
	public ModelAndView join(MemberDTO memberDTO, HttpSession session, MultipartFile [] files)throws Exception{
		ModelAndView mv = new ModelAndView();		
		int result = memberService.setJoin(memberDTO, files, session.getServletContext() );
		mv.setViewName("redirect: login");
		return mv;
		
	}
	
	//로그아웃
	@GetMapping("logout")
	public String logout(HttpSession session)throws Exception{
		System.out.println("로그아웃 실행");
		session.invalidate();
		return "redirect: /";
	}
	
	//마이페이지
	@GetMapping("myPage")
	public ModelAndView myPage(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		memberDTO = memberService.getMemberDetail(memberDTO);
		mv.addObject("myPage", memberDTO);
		mv.setViewName("member/myPage");
//		System.out.println(memberDTO.getMemberFileDTO().getFileName());
		return mv;
	}
	
	//관리자 페이지
	@GetMapping("adminMyPage")
	public ModelAndView adminMyPage(HttpSession session, Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		mv.addObject("memberDTO", memberDTO);
		mv.setViewName("member/adminMyPage");
		return mv;
	}
	
	//소셜관리자 페이지, 신고글만
	@GetMapping("socialAdminMyPage")
	public ModelAndView socialAdminMyPage(HttpSession session, Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		List<ReportDTO> reportDTOs = memberService.getReportList(pager);
		
		mv.addObject("pager", pager);
		mv.addObject("reportDTOs", reportDTOs);
		mv.addObject("memberDTO", memberDTO);
		mv.setViewName("member/socialAdminMyPage");
		return mv;
	}
	
	//소셜관리자 페이지, 문의글만
	@GetMapping("socialAdminInquiry")
	public ModelAndView socialAdminInquiry(HttpSession session, Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		List<InquiryDTO> inquiryDTOs = memberService.getInquiryList(pager);
		mv.addObject("inquiryDTOs", inquiryDTOs);
		mv.addObject("pager", pager);
		mv.addObject("memberDTO", memberDTO);
		mv.setViewName("member/socialAdminInquiry");
		return mv;
	}
	
	//소셜마이페이지 불러오기
	@GetMapping("socialMyPage")
	public ModelAndView socialMyPage(HttpSession session)throws Exception{
		//찜목록
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		memberDTO = memberService.getMLList(memberDTO);
		//사용자가 작성한 댓글 목록
		MeetingBoardCommentDTO meetingBoardCommentDTO = new MeetingBoardCommentDTO();
		meetingBoardCommentDTO.setWriter(memberDTO.getMemberNum());
		List<MeetingBoardCommentDTO> myCommentList = meetingBoardCommentService.getMyCommentList(meetingBoardCommentDTO);
		
		for(MeetingBoardCommentDTO a:myCommentList) {
			System.out.println(a.getContents());
		}
		
		mv.addObject("myCommentList", myCommentList);
		mv.addObject("LikeDTO", memberDTO);
		mv.setViewName("member/socialMyPage");
		return mv;
	}
	
	//회원정보 수정
	@GetMapping("infoUpdate")
	public MemberDTO infoUpdate(Long memberNum)throws Exception{
		MemberDTO memberDTO = new MemberDTO();
		//마이페이지에서 회원정보 수정으로 갈 때 파라미터로 보내준 memberNum을 새로 만든 DTO 객체에 set
		memberDTO.setMemberNum(memberNum);
		//그리고 다시 이 memberNum을 통해 기존 회원정보를 수정을 위해 불러오기
		memberDTO = memberService.getMemberDetail(memberDTO);
		return memberDTO;
	}
	
	@PostMapping("infoUpdate")
	public String infoUpdate(MemberDTO memberDTO, MultipartFile[] files, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.setInfoUpdate(memberDTO, files, session.getServletContext());
		return "redirect: myPage?memberNum=" + memberDTO.getMemberNum();
	}
	
	//이미지 파일 제거
	@PostMapping("fileDelete")
	@ResponseBody
	public int setFileDelete(MemberFileDTO memberFileDTO, HttpSession session)throws Exception{
		System.out.println("MemberController 실행");
		int jasonResult = memberService.setFileDelete(memberFileDTO, session.getServletContext());
		return jasonResult;
	}
	

	@PostMapping("report")
	@ResponseBody
	public Map<String, Integer> setReport(ReportDTO reportDTO)throws Exception{
		Map<String, Integer> map = new HashMap<String, Integer>();
		int count = memberService.countReport(reportDTO);
		int jasonResult = 0;
		if(count < 3) {
			jasonResult = memberService.setReport(reportDTO);
		}
		map.put("result", jasonResult);
		return map;
	}
	
	@GetMapping("reportDetail")
	@ResponseBody
	public String reportDetail(ReportDTO reportDTO)throws Exception{
		reportDTO = memberService.getReportDetail(reportDTO);
		String result = reportDTO.getReportContent();
		return result;
	}
	
	@GetMapping("inquiryDetail")
	@ResponseBody
	public String inquiryDetail(InquiryDTO inquiryDTO)throws Exception{
		inquiryDTO = memberService.getInquiryDetail(inquiryDTO);
		String result = inquiryDTO.getContents();
		return result;
	}


}
