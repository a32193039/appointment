package com.dhcc.mybatis.bean;

import java.io.Serializable;

public class PersonalCityList implements Serializable{
	private String cardType; 		//证件类型
	private String cardNo;   		//证件号码
	private String customerName;   	//客户名称
	private String isMarry;			//是否结婚
	private String sex;				//性别
	private String phone;			//电话
	private String birthday;		//出生年月
	private String bloodType;		//血型
	private String nation; 			//民族
	private String country;  		//国籍
	private String email;
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getIsMarry() {
		return isMarry;
	}
	public void setIsMarry(String isMarry) {
		this.isMarry = isMarry;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getBloodType() {
		return bloodType;
	}
	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "PersonalCityList [cardType=" + cardType + ", cardNo=" + cardNo
				+ ", customerName=" + customerName + ", isMarry=" + isMarry
				+ ", sex=" + sex + ", phone=" + phone + ", birthday="
				+ birthday + ", bloodType=" + bloodType + ", nation=" + nation
				+ ", country=" + country + ", email=" + email + "]";
	}
	
	
}
