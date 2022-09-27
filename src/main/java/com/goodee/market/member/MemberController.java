package com.goodee.market.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
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
		session.setAttribute("member", memberDTO);
		
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
	
	@GetMapping("logout")
	public String logout(HttpSession session)throws Exception{
		System.out.println("로그아웃 실행");
		session.invalidate();
		return "redirect: /";
	}
	
	@GetMapping("myPage")
	public ModelAndView myPage(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		memberDTO = memberService.getMemberDetail(memberDTO);
		mv.addObject("myPage", memberDTO);
		mv.setViewName("member/myPage");
		System.out.println(memberDTO.getMemberFileDTO().getFileName());
		return mv;
		
	}
	
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
	public ModelAndView infoUpdate(MemberDTO memberDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("memberDTO", memberDTO);
		mv.setViewName("redirect: myPage");
		return mv;
	}
	

}
