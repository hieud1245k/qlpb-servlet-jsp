package com.hieuminh.model;

import java.sql.Timestamp;
import java.util.List;

public class AbstractModel<T> {
	private String id;
	private Timestamp createdDate;
	private Timestamp createdBy;
	private Timestamp modifiedDate;
	private Timestamp modifiedBy;
	private List<T> listResult;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}
	public Timestamp getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Timestamp createdBy) {
		this.createdBy = createdBy;
	}
	public Timestamp getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Timestamp modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public Timestamp getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(Timestamp modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public List<T> getListResult() {
		return listResult;
	}
	public void setListResult(List<T> listResult) {
		this.listResult = listResult;
	}
}
