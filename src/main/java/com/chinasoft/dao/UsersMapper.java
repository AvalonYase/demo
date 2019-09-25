package com.chinasoft.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.entity.Users;
@Repository
@Transactional
@Mapper
public interface UsersMapper {
	public Users selectUsersByNameAndPwd(@Param("username") String username,@Param("password") String password);

	@Select("select * from users u where u.username=#{username}")
	public Users getUserByName(String username);			//由名查user
	
	/*@Insert("insert into user(username,password,url) values (#{user.username},#{user.password},#{user.url})")*/
	public boolean creatNewUser(Users u);			//创建新用户

}
