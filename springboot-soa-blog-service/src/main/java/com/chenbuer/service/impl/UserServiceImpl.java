package com.chenbuer.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.chenbuer.dao.UserDao;
import com.chenbuer.entity.User;
import com.chenbuer.service.UserService;

import javax.annotation.Resource;

/**
 * UserService��ʵ����
 * @author czy
 *
 */
@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserDao userDao;

	public User getUserByUserName(String userName) {
		// TODO Auto-generated method stub
		return userDao.getUserByUserName(userName);
	}

	public User find() {
		// TODO Auto-generated method stub
		return userDao.find();
	}

}
