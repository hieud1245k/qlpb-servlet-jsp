package com.hieuminh.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.hieuminh.model.StaffModel;

public class StaffMapper implements RowMapper<StaffModel> {

	@Override
	public StaffModel mapRow(ResultSet resultSet) {
		try {
			StaffModel staffModel = new StaffModel();
			staffModel.setId(resultSet.getString("IDNV"));
			staffModel.setFullName(resultSet.getString("Hoten"));
			staffModel.setIdPB(resultSet.getString("IDPB"));
			staffModel.setAddress(resultSet.getString("Diachi"));
			return staffModel;
		} catch (SQLException e) {
			System.out.println("Mapper loi: "+ e);
			return null;
		}
	}

}
