package com.chenbuer.dao;

import com.chenbuer.entity.User;

/**
 * �û�DAO�ӿ�
 * @author czy
 *
 */
public interface UserDao {

	/**
	 * ͨ���û�����ȡ�û�
	 * @param userName
	 * @return
	 */
	User getUserByUserName(String userName);
	
	User find();
}
