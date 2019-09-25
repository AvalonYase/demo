package com.chinasoft.biz;

import com.chinasoft.entity.Users;

public interface Usersbiz {
	public Users checkLogin(String username,String password);
	public Users getUserByName(String username);	
	public boolean creatNewUser(Users user);
}
