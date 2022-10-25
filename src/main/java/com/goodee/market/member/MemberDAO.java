package com.goodee.market.member;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goodee.market.util.Pager;

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
		return sqlSession.update(NAMESPACE + "setInfoUpdate", memberDTO);
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

	//찜목록 불러오기
	@Override
	public MemberDTO getMLList(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getMLList", memberDTO);
	}

	//회원 신고하기
	@Override
	public int setReport(ReportDTO reportDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setReport", reportDTO);
	}
	
	//같은 회원 신고 횟수 count
	public int countReport(ReportDTO reportDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE + "countReport", reportDTO);
	}

	//신고 글 목록 불러오기
	@Override
	public List<ReportDTO> getReportList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getReportList", pager);
	}
	
	//신고글 총 갯수 계산
	public Long getCount()throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getCount");
	}

	//1대1 문의글 작성
	@Override
	public int setInquiry(InquiryDTO inquiryDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setInquiry", inquiryDTO);
	}

	//답글 STEP 업데이트
	@Override
	public int setStepUpdate(InquiryDTO inquiryDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setStepUpdate", inquiryDTO);
	}

	//1대1 문의글 답글 작성
	@Override
	public int setInquiryReply(InquiryDTO inquiryDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setInquiryReply", inquiryDTO);
	}

	//관리자 페이지에서 문의글 리스트 불러오기
	@Override
	public List<InquiryDTO> getInquiryList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getInquiryList", pager);
	}
	
	//문의글 갯수 계산
	public Long getInquiryCount()throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getInquiryCount");
	}
	
	//신고글 내용 가져오기
	public ReportDTO getReportDetail(ReportDTO reportDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getReportDetail", reportDTO);
	}
	
	//문의글 내용 가져오기
		public InquiryDTO getInquiryDetail(InquiryDTO inquiryDTO)throws Exception{
			return sqlSession.selectOne(NAMESPACE + "getInquiryDetail", inquiryDTO);
		}
	
	//멤버등급 인서트
		public int setRoles(MemberDTO memberDTO)throws Exception{
			return sqlSession.insert(NAMESPACE + "setRoles", memberDTO);
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
