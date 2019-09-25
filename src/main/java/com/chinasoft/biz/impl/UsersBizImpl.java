package com.chinasoft.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.biz.Usersbiz;
import com.chinasoft.dao.UsersMapper;
import com.chinasoft.entity.Users;
@Service
@Transactional
public class UsersBizImpl implements Usersbiz {
	@Autowired
	private UsersMapper um;
	
	public UsersMapper getUm() {
		return um;
	}

	public void setUm(UsersMapper um) {
		this.um = um;
	}

	public Users checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		return um.selectUsersByNameAndPwd(username, password);
	}

	public Users getUserByName(String username) {
		// TODO Auto-generated method stub
		return um.getUserByName(username);
	}

	public boolean creatNewUser(Users user) {
		// TODO Auto-generated method stub
		return um.creatNewUser(user);
	}

}
