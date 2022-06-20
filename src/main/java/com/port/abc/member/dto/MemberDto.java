package com.port.abc.member.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class MemberDto {
	
	private String memberId;
	private String memberPw;
	private String memberName;
	private String hp1;
	private String hp2;
	private String hp3;
	private String regidence;
	private String memberGender;
	private String email;
	private Date  join_Date;
	/**
	 * @return the memberId
	 */
	public String getMemberId() {
		return memberId;
	}
	/**
	 * @param memberId the memberId to set
	 */
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	/**
	 * @return the memberPw
	 */
	public String getMemberPw() {
		return memberPw;
	}
	/**
	 * @param memberPw the memberPw to set
	 */
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	/**
	 * @return the memberName
	 */
	public String getMemberName() {
		return memberName;
	}
	/**
	 * @param memberName the memberName to set
	 */
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	/**
	 * @return the hp1
	 */
	public String getHp1() {
		return hp1;
	}
	/**
	 * @param hp1 the hp1 to set
	 */
	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}
	/**
	 * @return the hp2
	 */
	public String getHp2() {
		return hp2;
	}
	/**
	 * @param hp2 the hp2 to set
	 */
	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}
	/**
	 * @return the hp3
	 */
	public String getHp3() {
		return hp3;
	}
	/**
	 * @param hp3 the hp3 to set
	 */
	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}
	/**
	 * @return the regidence
	 */
	public String getRegidence() {
		return regidence;
	}
	/**
	 * @param regidence the regidence to set
	 */
	public void setRegidence(String regidence) {
		this.regidence = regidence;
	}
	/**
	 * @return the memberGender
	 */
	public String getMemberGender() {
		return memberGender;
	}
	/**
	 * @param memberGender the memberGender to set
	 */
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the join_Date
	 */
	public Date getJoin_Date() {
		return join_Date;
	}
	/**
	 * @param join_Date the join_Date to set
	 */
	public void setJoin_Date(Date join_Date) {
		this.join_Date = join_Date;
	}
	
	
	
	
}
