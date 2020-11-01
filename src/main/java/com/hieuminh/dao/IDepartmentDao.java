package com.hieuminh.dao;

import java.util.List;

import com.hieuminh.model.DepartmentModel;
import com.hieuminh.model.StaffModel;

public interface IDepartmentDao extends GenericDao<DepartmentModel> {
	List<DepartmentModel> findAll();
	boolean save(DepartmentModel model);
	DepartmentModel findOne(String id);
	void update(DepartmentModel model);
}
