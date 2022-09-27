package com.goodee.market.member;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
		
		return result;
	}
	
	//회원정보 수정시 정보 불러오기
	public MemberDTO getMemberDetail(MemberDTO memberDTO)throws Exception{
		return memberDAO.getMemberDetail(memberDTO);
	}
	
	
	
	
	

}
