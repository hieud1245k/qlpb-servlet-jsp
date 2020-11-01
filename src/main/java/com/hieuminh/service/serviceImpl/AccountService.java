package com.hieuminh.service.serviceImpl;

import com.hieuminh.dao.IAccountDao;
import com.hieuminh.dao.daoImpl.AccountDao;
import com.hieuminh.model.AccountModel;
import com.hieuminh.service.IAccountService;

public class AccountService implements IAccountService {

	private IAccountDao accountDao = new AccountDao();

	@Override
	public AccountModel findByUsernameAndPassword(String username, String password) {
		return accountDao.findByUsernameAndPassword(username, password);
	}

}
