package com.chenbuer.service;

import com.chenbuer.entity.User;

public interface UserService {


	/**
	 * 通过用户名获取用户
	 * @param userName
	 * @return
	 */
	User getUserByUserName(String userName);

	/**
	 * 获取到博主信息
	 * @return
	 */
	User find();

}
