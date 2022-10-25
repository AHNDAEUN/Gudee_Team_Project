package com.goodee.market;

import static org.junit.Assert.*;
import java.sql.Date;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.goodee.market.member.InquiryDTO;
import com.goodee.market.member.MemberDAO;
import com.goodee.market.member.ReportDTO;

public class MemberDAOTest extends MyAbstractTest{
	
	@Autowired
	private MemberDAO memberDAO;

//	@Test
	public void setReportTest()throws Exception {
		
		for(int i = 0; i <= 50; i++) {
		ReportDTO reportDTO = new ReportDTO();
		Date date = Date.valueOf("2022-02-02");
		reportDTO.setReportMemberNum(2L);
		reportDTO.setReportName("BB");
		reportDTO.setReportNickname("BB");
		reportDTO.setReportJoinDate(date);
		
		reportDTO.setReportedMemberNum(3L);
		reportDTO.setReportedName("CC");
		reportDTO.setReportedNickname("CC");
		reportDTO.setReportedJoinDate(date);
		
		reportDTO.setReportTitle("Report");
		reportDTO.setReportContent("report");
		System.out.println(reportDTO.getReportTitle());
		System.out.println(memberDAO);
		memberDAO.setReport(reportDTO);
		}
	}
	
	@Test
	public void setInquiryTest()throws Exception{
		for(int i = 0; i <= 50; i++) {
			InquiryDTO inquiryDTO = new InquiryDTO();
			Date date = Date.valueOf("2022-02-02");
			inquiryDTO.setNum(23L);
			inquiryDTO.setWriter(2L);
			inquiryDTO.setTitle("Inquiry");
			inquiryDTO.setContents("Inquiry contents");
			inquiryDTO.setRegDate(date);
			inquiryDTO.setRef(23L);
			inquiryDTO.setStep(0L);
			memberDAO.setInquiry(inquiryDTO);
		}
	}

}
