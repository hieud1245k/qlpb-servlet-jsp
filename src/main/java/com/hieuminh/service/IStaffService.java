package com.hieuminh.service;

import java.util.List;

import com.hieuminh.model.StaffModel;

public interface IStaffService {
	List<StaffModel> findAll();
	boolean save(StaffModel model);
}
