package com.hieuminh.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.hieuminh.model.AccountModel;

public class AccountMapper implements RowMapper<AccountModel> {

	@Override
	public AccountModel mapRow(ResultSet resultSet) {
		AccountModel accountModel = new AccountModel();
		try {
			accountModel.setId(resultSet.getString("id"));
			accountModel.setUsername(resultSet.getString("username"));
			accountModel.setPassword(resultSet.getString("password"));
			return accountModel;
		} catch (SQLException e) {
			System.out.println(e);
			return null;
		}
		
	}

}
