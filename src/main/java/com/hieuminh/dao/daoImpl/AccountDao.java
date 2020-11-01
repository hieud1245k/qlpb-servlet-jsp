package com.hieuminh.dao.daoImpl;

import java.util.List;

import com.hieuminh.dao.IAccountDao;
import com.hieuminh.mapper.AccountMapper;
import com.hieuminh.model.AccountModel;

public class AccountDao extends AbstractDao<AccountModel> implements IAccountDao {

	@Override
	public AccountModel findByUsernameAndPassword(String username, String password) {
		StringBuilder sql = new StringBuilder("SELECT * FROM taikhoan WHERE username = ? and password = ?");
		List<AccountModel> accounts = query(sql.toString(),new AccountMapper(), username,password);
		return accounts.isEmpty()?null:accounts.get(0);
	}
	
}
