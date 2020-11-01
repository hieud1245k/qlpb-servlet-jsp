package com.hieuminh.model;

public class StaffModel extends AbstractModel<StaffModel> {
	private String fullName;
	private String address;
	private String idPB;
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIdPB() {
		return idPB;
	}
	public void setIdPB(String idPB) {
		this.idPB = idPB;
	}
	
}
