package com.goodee.market.meetingboard;

import java.sql.Date;
import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

import com.goodee.market.member.MemberDTO;

public class MeetingBoardDTO {

	private Long meetingBoardNum;
	private Long meetingBoardWriter;
	private String meetingBoardTitle;
	private String meetingBoardContents;
	private Date meetingBoardRegDate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private LocalDateTime meetingBoardDueDate;
	
	private Long meetingBoardTotalCost;
	private String meetingBoardLocation;
	private Integer meetingBoardCurrentMember;
	private Integer meetingBoardMaxMember;
	private String meetingBoardCategory;
	private String meetingBoardHostDemand;
	private Integer meetingBoardStatus;
	
	private MemberDTO memberDTO;
	private MeetingBoardImageDTO meetingBoardImageDTO;
	
	public Long getMeetingBoardNum() {
		return meetingBoardNum;
	}
	public void setMeetingBoardNum(Long meetingBoardNum) {
		this.meetingBoardNum = meetingBoardNum;
	}
	public Long getMeetingBoardWriter() {
		return meetingBoardWriter;
	}
	public void setMeetingBoardWriter(Long meetingBoardWriter) {
		this.meetingBoardWriter = meetingBoardWriter;
	}
	public String getMeetingBoardTitle() {
		return meetingBoardTitle;
	}
	public void setMeetingBoardTitle(String meetingBoardTitle) {
		this.meetingBoardTitle = meetingBoardTitle;
	}
	public String getMeetingBoardContents() {
		return meetingBoardContents;
	}
	public void setMeetingBoardContents(String meetingBoardContents) {
		this.meetingBoardContents = meetingBoardContents;
	}
	public Date getMeetingBoardRegDate() {
		return meetingBoardRegDate;
	}
	public void setMeetingBoardRegDate(Date meetingBoardRegDate) {
		this.meetingBoardRegDate = meetingBoardRegDate;
	}
	
	public LocalDateTime getMeetingBoardDueDate() {
		return meetingBoardDueDate;
	}
	public void setMeetingBoardDueDate(LocalDateTime meetingBoardDueDate) {
		this.meetingBoardDueDate = meetingBoardDueDate;
	}
	public Long getMeetingBoardTotalCost() {
		return meetingBoardTotalCost;
	}
	public void setMeetingBoardTotalCost(Long meetingBoardTotalCost) {
		this.meetingBoardTotalCost = meetingBoardTotalCost;
	}
	public String getMeetingBoardLocation() {
		return meetingBoardLocation;
	}
	public void setMeetingBoardLocation(String meetingBoardLocation) {
		this.meetingBoardLocation = meetingBoardLocation;
	}
	public Integer getMeetingBoardCurrentMember() {
		return meetingBoardCurrentMember;
	}
	public void setMeetingBoardCurrentMember(Integer meetingBoardCurrentMember) {
		this.meetingBoardCurrentMember = meetingBoardCurrentMember;
	}
	public Integer getMeetingBoardMaxMember() {
		return meetingBoardMaxMember;
	}
	public void setMeetingBoardMaxMember(Integer meetingBoardMaxMember) {
		this.meetingBoardMaxMember = meetingBoardMaxMember;
	}
	public String getMeetingBoardCategory() {
		return meetingBoardCategory;
	}
	public void setMeetingBoardCategory(String meetingBoardCategory) {
		this.meetingBoardCategory = meetingBoardCategory;
	}
	public String getMeetingBoardHostDemand() {
		return meetingBoardHostDemand;
	}
	public void setMeetingBoardHostDemand(String meetingBoardHostDemand) {
		this.meetingBoardHostDemand = meetingBoardHostDemand;
	}
	public Integer getMeetingBoardStatus() {
		return meetingBoardStatus;
	}
	public void setMeetingBoardStatus(Integer meetingBoardStatus) {
		this.meetingBoardStatus = meetingBoardStatus;
	}
	public MemberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	public MeetingBoardImageDTO getMeetingBoardImageDTO() {
		return meetingBoardImageDTO;
	}
	public void setMeetingBoardImageDTO(MeetingBoardImageDTO meetingBoardImageDTO) {
		this.meetingBoardImageDTO = meetingBoardImageDTO;
	}
	
}