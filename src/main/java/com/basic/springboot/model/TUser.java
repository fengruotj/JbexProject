package com.basic.springboot.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * TUser entity. @author MyEclipse Persistence Tools
 */

public class TUser implements java.io.Serializable {

	// Fields

	private Long userId;
	private String email;
	private String userName;
	private String password;
	private String userNickname;
	private String personSignature;
	private Integer sex;
	private String school;
	private String academy;
	private Integer state;
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE,pattern = "yyyy-mm-dd")
	private Date birthday;
	private String telephone;
	private String picture;
	private Integer securityControl;

	// Constructors

	/** default constructor */
	public TUser() {
	}

	/** minimal constructor */
	public TUser(String email, String userName, String password) {
		this.email = email;
		this.userName = userName;
		this.password = password;
	}

	/** full constructor */
	public TUser(String email, String userName, String password,
			String userNickname, String personSignature, Integer sex,
			String school, String academy, Integer state, Date birthday,
			String telephone, String picture, Integer securityControl) {
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.userNickname = userNickname;
		this.personSignature = personSignature;
		this.sex = sex;
		this.school = school;
		this.academy = academy;
		this.state = state;
		this.birthday = birthday;
		this.telephone = telephone;
		this.picture = picture;
		this.securityControl = securityControl;
	}

	// Property accessors

	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserNickname() {
		return this.userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getPersonSignature() {
		return this.personSignature;
	}

	public void setPersonSignature(String personSignature) {
		this.personSignature = personSignature;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getSchool() {
		return this.school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAcademy() {
		return this.academy;
	}

	public void setAcademy(String academy) {
		this.academy = academy;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Integer getSecurityControl() {
		return this.securityControl;
	}

	public void setSecurityControl(Integer securityControl) {
		this.securityControl = securityControl;
	}

}
