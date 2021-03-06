package com.chenbuer.service;

import com.chenbuer.entity.User;

public interface UserService {


	/**
	 * 通过用户名获取用户信息
	 * @param userName
	 * @return
	 */
	User getUserByUserName(String userName);

	/**
	 * 获取到博主信息
	 * @return
	 */
	User find();

	/**
	 * 更新用户信息
	 * @param user
     */
	void updateUser(User user);

}
