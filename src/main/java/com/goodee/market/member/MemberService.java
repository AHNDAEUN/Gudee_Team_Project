package com.goodee.market.member;

import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.goodee.market.util.Pager;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private MemberFileManager memberFileManager;
	
	//로그인
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return memberDAO.getLogin(memberDTO);
	}
	
	//회원가입
	public int setJoin(MemberDTO memberDTO, MultipartFile [] files, ServletContext servletContext) throws Exception {
		//사진파일이 가입된 회원의 memebernum을 참조해야 하므로 먼저 회원가입 메서드 실행
		int result = memberDAO.setJoin(memberDTO);
		//운영체제에서 저장에 필요한 realpath를 얻기 위해 필요한 path 선언
		String path = "resources/upload/member";
		//파일추가 칸은 여러개 만들었지만 중간에 몇 칸만 파일을 추가했을 시, 다른 비어있는 파일
		//추가 칸들은 아래에 있는 코드를 실행할 필요가 없으므로 파일이 없을 때는 continue를 써준다
		//반복문 안에서 continue를 쓰게 되면 그 안의 코드들을 실행하지 않고 다시 반복문을 실행한다
		for(MultipartFile multipartFile : files) {
			System.out.println(multipartFile.isEmpty());
			if(multipartFile.isEmpty()) {
				continue;
			}
			String fileName = memberFileManager.saveFile(servletContext, path, multipartFile);
			MemberFileDTO memberFileDTO = new MemberFileDTO();
			memberFileDTO.setFileName(fileName);
			memberFileDTO.setOriName(multipartFile.getOriginalFilename());
			memberFileDTO.setMemberNum(memberDTO.getMemberNum());
			memberDAO.setAddFile(memberFileDTO);
			System.out.println("파일추가 실행");
		}
		memberDAO.setRoles(memberDTO);
		
		return result;
	}
	
	//회원정보 수정시 정보 불러오기
	public MemberDTO getMemberDetail(MemberDTO memberDTO)throws Exception{
		return memberDAO.getMemberDetail(memberDTO);
	}
	
	//회원정보 수정
	public int setInfoUpdate(MemberDTO memberDTO, MultipartFile[] files, ServletContext servletContext)throws Exception {
		int result = memberDAO.setInfoUpdate(memberDTO);
		for(MultipartFile multipartFile : files) {
			if(multipartFile.isEmpty()) {
				continue;
			}else {
				String path = "resources/upload/member";
				String fileName = memberFileManager.saveFile(servletContext, path, multipartFile);
				MemberFileDTO memberFileDTO = new MemberFileDTO();
				memberFileDTO.setMemberNum(memberDTO.getMemberNum());
				memberFileDTO.setFileName(fileName);
				memberFileDTO.setOriName(multipartFile.getOriginalFilename());
				memberDAO.setAddFile(memberFileDTO);
			}
		}
		return result;
	}
	
	public int setFileDelete(MemberFileDTO memberFileDTO, ServletContext servletContext)throws Exception{
		System.out.println("MemberService 실행");
		//DB에서 파일 제거
		memberFileDTO = memberDAO.getFileDetail(memberFileDTO);
		int result = memberDAO.setFileDelete(memberFileDTO);
		//HDD에서 파일 제거
		String path = "/resources/upload/member";
		//실제로 DB에서 파일이 제거되었을때만 HDD에서 같은 파일을 제거해야 하므로
		if(result > 0) {
			memberFileManager.deleteFile(servletContext, path, memberFileDTO);
		}
		return result;
	}
	
	//좋아요 리스트 불러오기
	public MemberDTO getMLList(MemberDTO memberDTO)throws Exception{
		memberDTO = memberDAO.getMLList(memberDTO);
		return memberDTO;
	}
	

	//신고글 작성
	public int setReport(ReportDTO reportDTO)throws Exception{
		return memberDAO.setReport(reportDTO);
	}
	

	//신고글 갯수 계산
	public int countReport(ReportDTO reportDTO)throws Exception{
		return memberDAO.countReport(reportDTO);
	}

	//신고글 리스트 불러오기
	public List<ReportDTO> getReportList(Pager pager)throws Exception{
		pager.getRowNum();
		Long totalCount = memberDAO.getCount();
		pager.getNum(totalCount);
		System.out.println(pager.getStartRow());
		System.out.println(pager.getLastRow());
		return memberDAO.getReportList(pager);
	}
	
	//1대1 문의글 작성
	public int setInquiry(InquiryDTO inquiryDTO)throws Exception{
		return memberDAO.setInquiry(inquiryDTO);
	}
	
	//1대1 문의글 답글 작성
	public int setInquiryReply(InquiryDTO inquiryDTO)throws Exception{
		memberDAO.setStepUpdate(inquiryDTO);
		int result = memberDAO.setInquiryReply(inquiryDTO);
		return result;
	}
	
	public List<InquiryDTO> getInquiryList(Pager pager)throws Exception{
		pager.getRowNum();
		Long totalCount = memberDAO.getInquiryCount();
		pager.getNum(totalCount);
		return memberDAO.getInquiryList(pager);
	}
	
	//신고글 내용 가져오기
	public ReportDTO getReportDetail(ReportDTO reportDTO)throws Exception{
		return memberDAO.getReportDetail(reportDTO);
	}
	
	//문의글 내용 가져오기
		public InquiryDTO getInquiryDetail(InquiryDTO inquiryDTO)throws Exception{
			return memberDAO.getInquiryDetail(inquiryDTO);
		}

}
