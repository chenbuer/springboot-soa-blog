package com.chenbuer.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.chenbuer.dao.BlogTypeDao;
import com.chenbuer.entity.BlogType;
import com.chenbuer.service.BlogTypeService;

import javax.annotation.Resource;
import java.util.List;

/**
 * blogTypeService��ʵ����
 * @author czy
 *
 */
@Service
public class BlogTypeServiceImpl implements BlogTypeService {
	
	@Resource
	private BlogTypeDao blogTypeDao;

	public List<BlogType> countList() {
		return blogTypeDao.countList();
	}


}
