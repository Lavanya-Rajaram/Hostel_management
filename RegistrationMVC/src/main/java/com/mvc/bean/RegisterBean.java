package com.mvc.bean;
 
public class RegisterBean {
 
 private String fullName;
 private String fatherName;
 private String gender;
 private String email;
 private String address;
 private String phone;
 private String hostelRequired;
 
 public String getFatherName() {
 return fatherName;
 }
 public void setFatherName(String fatherName) {
 this.fatherName = fatherName;
 }
 public String getAddress() {
 return address;
 }
 public void setAddress(String address) {
 this.address = address;
 }
 public void setFullName(String fullName) {
 this.fullName = fullName;
 }
 public String getFullName() {
 return fullName;
 }
 public void setEmail(String email) {
 this.email = email;
 }
 public String getEmail() {
 return email;
 }
 public void setHostelRequired(String hostelRequired) {
	 this.hostelRequired = hostelRequired;
	 }
 public String getHostelRequired() {
	 return hostelRequired;
 }
 public String getGender() {
return gender;
}
public void setGender(String gender) {
this.gender = gender;
}
public String getPhone() {
return phone;
}
public void setPhone(String phone) {
this.phone = phone;
}
	 
}