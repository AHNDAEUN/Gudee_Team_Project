package com.goodee.market.member;


import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ReportDTO {
	
	private Long num;
	private Long reportMemberNum;
	private String reportName;
	private String reportNickname;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date reportJoinDate;
	private Long reportedMemberNum;
	private String reportedName;
	private String reportedNickname;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date reportedJoinDate;
	private String reportTitle;
	private String reportContent;
	
	public Long getReportMemberNum() {
		return reportMemberNum;
	}
	public void setReportMemberNum(Long reportMemberNum) {
		this.reportMemberNum = reportMemberNum;
	}
	
	public Long getReportedMemberNum() {
		return reportedMemberNum;
	}
	public void setReportedMemberNum(Long reportedMemberNum) {
		this.reportedMemberNum = reportedMemberNum;
	}
	
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}




	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}
	public String getReportName() {
		return reportName;
	}
	public void setReportName(String reportName) {
		this.reportName = reportName;
	}
	public String getReportNickname() {
		return reportNickname;
	}
	public void setReportNickname(String reportNickname) {
		this.reportNickname = reportNickname;
	}
	public Date getReportJoinDate() {
		return reportJoinDate;
	}
	public void setReportJoinDate(Date reportJoinDate) {
		this.reportJoinDate = reportJoinDate;
	}
	public String getReportedName() {
		return reportedName;
	}
	public void setReportedName(String reportedName) {
		this.reportedName = reportedName;
	}
	public String getReportedNickname() {
		return reportedNickname;
	}
	public void setReportedNickname(String reportedNickname) {
		this.reportedNickname = reportedNickname;
	}
	public Date getReportedJoinDate() {
		return reportedJoinDate;
	}
	public void setReportedJoinDate(Date reportedJoinDate) {
		this.reportedJoinDate = reportedJoinDate;
	}

}
