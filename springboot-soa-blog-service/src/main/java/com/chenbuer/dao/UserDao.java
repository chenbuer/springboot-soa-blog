package com.chenbuer.dao;

import com.chenbuer.entity.User;

/**
 * 用户DAO接口
 * @author czy
 *
 */
public interface UserDao {

	/**
	 * 通过用户名获取用户
	 * @param userName
	 * @return
	 */
	User getUserByUserName(String userName);
	
	User find();
}
