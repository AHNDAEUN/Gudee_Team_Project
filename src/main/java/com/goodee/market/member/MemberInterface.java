package com.goodee.market.member;

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

}
