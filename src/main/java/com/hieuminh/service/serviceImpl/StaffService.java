package com.hieuminh.service.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import com.hieuminh.dao.IStaffDao;
import com.hieuminh.model.StaffModel;
import com.hieuminh.service.IStaffService;

public class StaffService implements IStaffService {
	@Inject
	private IStaffDao staffDao;

	@Override
	public List<StaffModel> findAll() {
		return staffDao.findAll();
	}

	@Override
	public boolean save(StaffModel model) {
		return staffDao.save(model);
	}

}