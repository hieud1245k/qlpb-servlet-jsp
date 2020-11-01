package com.hieuminh.dao;

import com.hieuminh.model.AccountModel;

public interface IAccountDao extends GenericDao<AccountModel> {
	AccountModel findByUsernameAndPassword(String username, String password);
}
