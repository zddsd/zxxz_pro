package com.zxxz.ssh.entity;

import java.io.Serializable;

public class User implements Serializable {

	
	
	
	/**
	 * @author zshuaijieAKI
	 */
	private static final long serialVersionUID = 1L;
	private int userid;
	private String username;
	private String password;
	private String sex;
	private String email;
	private String birthday;
	private String phonenumber;
	private String zone;
	private String imgUrl;
	private String createTime;
	private String status;

	public User() {
	}

	public User(int userid, String username, String password, String createTime, String status) {
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.createTime = createTime;
		this.status = status;
	}

	public User(int userid, String username, String password, String sex, String email, String birthday,
			String phonenumber, String zone, String imgUrl, String createTime, String status) {
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.email = email;
		this.birthday = birthday;
		this.phonenumber = phonenumber;
		this.zone = zone;
		this.imgUrl = imgUrl;
		this.createTime = createTime;
		this.status = status;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", password=" + password + ", sex=" + sex
				+ ", email=" + email + ", birthday=" + birthday + ", phonenumber=" + phonenumber + ", zone=" + zone
				+ ", imgUrl=" + imgUrl + ", createTime=" + createTime + ", status=" + status + "]";
	}
}
