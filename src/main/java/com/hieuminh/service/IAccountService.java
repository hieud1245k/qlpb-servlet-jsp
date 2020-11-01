package com.hieuminh.service;

import com.hieuminh.model.AccountModel;

public interface IAccountService {
	AccountModel findByUsernameAndPassword(String username, String password);
}
