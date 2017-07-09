package com.chenbuer.dao;

import com.chenbuer.entity.User;

/**
 * �û�DAO�ӿ�
 * @author czy
 *
 */
public interface UserDao {

	User getUserByUserName(String userName);
	
	User find();

	void updateUser(User user);
}
