package com.goodee.market.member;

import java.util.List;

import com.goodee.market.util.Pager;

public interface MemberInterface {
	
	//로그인
	public MemberDTO getLogin(MemberDTO memberDTO) throws Exception;
	
	//회원가입
	public int setJoin(MemberDTO memberDTO)throws Exception;
	
	//프로필 이미지 추가
	public int setAddFile(MemberFileDTO memberFileDTO)throws Exception;
	
	//프로필 이미지 삭제
	public int setFileDelete(MemberFileDTO memberFileDTO)throws Exception;
	
	//프로필 사진 정보 불러오기
	public MemberFileDTO getFileDetail(MemberFileDTO memberFileDTO)throws Exception;
	
	//회원정보 수정 시 불러오는 회원정보
	public MemberDTO getMemberDetail(MemberDTO memberDTO)throws Exception;
	
	//회원정보 수정
	public int setInfoUpdate(MemberDTO memberDTO)throws Exception;
	
	//찜목록 불러오기
	public MemberDTO getMLList(MemberDTO memberDTO)throws Exception;
	
	//회원 신고하기
	public int setReport(ReportDTO reportDTO)throws Exception;

	
	//신고 글 목록 불러오기
	public List<ReportDTO> getReportList(Pager pager)throws Exception;
	
	//1대1 문의글 작성
	public int setInquiry(InquiryDTO inquiryDTO)throws Exception;
	
	//문의글 답글 STEP 업데이트
	public int setStepUpdate(InquiryDTO inquiryDTO)throws Exception;
	
	//문의글 답글 작성
	public int setInquiryReply(InquiryDTO inquiryDTO)throws Exception;
	
	//관리자 페이지에서 문의글 리스트 불러오기
	public List<InquiryDTO> getInquiryList(Pager pager)throws Exception;


}
