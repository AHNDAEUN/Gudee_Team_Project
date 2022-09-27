package com.goodee.market.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements MemberInterface{
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.goodee.market.member.MemberDAO.";

	@Override
	public MemberDTO getLogin(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getLogin", memberDTO);
	}

	@Override
	public int setJoin(MemberDTO memberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setJoin", memberDTO);
	}

	//멤버 정보 불러오기
	@Override
	public MemberDTO getMemberDetail(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getMemberDetail", memberDTO);
	}

	//회원 정보 수정
	@Override
	public int setInfoUpdate(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//파일 추가
	@Override
	public int setAddFile(MemberFileDTO memberFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setAddFile", memberFileDTO);
	}

	//프로필 이미지 삭제
	@Override
	public int setFileDelete(MemberFileDTO memberFileDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setFileDelete", memberFileDTO);
	}

	//기존 프로필 이미지 정보 불러오기
	@Override
	public MemberFileDTO getFileDetail(MemberFileDTO memberFileDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getFileDetail", memberFileDTO);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
