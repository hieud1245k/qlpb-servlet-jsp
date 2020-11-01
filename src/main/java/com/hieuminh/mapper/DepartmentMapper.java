package com.hieuminh.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.hieuminh.model.DepartmentModel;

public class DepartmentMapper implements RowMapper<DepartmentModel> {

	@Override
	public DepartmentModel mapRow(ResultSet resultSet) {
		try {
			DepartmentModel departmentModel = new DepartmentModel();
			departmentModel.setId(resultSet.getString("IDPB"));
			departmentModel.setName(resultSet.getString("Tenph"));
			departmentModel.setDescription(resultSet.getString("Mota"));
			return departmentModel;
		} catch (SQLException e) {
			System.out.println(e);
			return null;
		}
	}

}
