package com.hieuminh.dao;

import java.util.List;

import com.hieuminh.model.StaffModel;

public interface IStaffDao extends GenericDao<StaffModel> {
	List<StaffModel> findAll();
	List<StaffModel> findById(String idPB);
	StaffModel findOne(String idNV);
	boolean save(StaffModel model);
	void delete(String id);
	void update(StaffModel model);
}
