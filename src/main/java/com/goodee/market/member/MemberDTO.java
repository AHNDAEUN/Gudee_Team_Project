package com.goodee.market.member;

import java.sql.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.goodee.market.meetingboard.MeetingBoardDTO;
import com.goodee.market.meetingboard.like.MeetingLikeDTO;

public class MemberDTO {
	
	private Long memberNum;
	private String id;
	private String password;
	private String name;
	private String nickname;
	private String email;
	private String phone;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date joinDate;
	private Long cash;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date birthday;
	private String main_address;
	private String detail_address;
	private String postcode;
	private MemberFileDTO memberFileDTO;
	private List<MeetingLikeDTO> meetingLikeDTOs;
	private List<MeetingBoardDTO> meetingBoardDTOs;
	private List<RoleDTO> roleDTOs;
	private List<ReportDTO> reportDTOs;
	
	public Long getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public Long getCash() {
		return cash;
	}
	public void setCash(Long cash) {
		this.cash = cash;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getMain_address() {
		return main_address;
	}
	public void setMain_address(String main_address) {
		this.main_address = main_address;
	}
	public String getDetail_address() {
		return detail_address;
	}
	public void setDetail_address(String detail_address) {
		this.detail_address = detail_address;
	}
	public MemberFileDTO getMemberFileDTO() {
		return memberFileDTO;
	}
	public void setMemberFileDTO(MemberFileDTO memberFileDTO) {
		this.memberFileDTO = memberFileDTO;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public List<MeetingLikeDTO> getMeetingLikeDTOs() {
		return meetingLikeDTOs;
	}
	public void setMeetingLikeDTOs(List<MeetingLikeDTO> meetingLikeDTOs) {
		this.meetingLikeDTOs = meetingLikeDTOs;
	}
	public List<MeetingBoardDTO> getMeetingBoardDTOs() {
		return meetingBoardDTOs;
	}
	public void setMeetingBoardDTOs(List<MeetingBoardDTO> meetingBoardDTOs) {
		this.meetingBoardDTOs = meetingBoardDTOs;
	}
	public List<RoleDTO> getRoleDTOs() {
		return roleDTOs;
	}
	public void setRoleDTOs(List<RoleDTO> roleDTOs) {
		this.roleDTOs = roleDTOs;
	}
	public List<ReportDTO> getReportDTOs() {
		return reportDTOs;
	}
	public void setReportDTOs(List<ReportDTO> reportDTOs) {
		this.reportDTOs = reportDTOs;
	}
	
}
