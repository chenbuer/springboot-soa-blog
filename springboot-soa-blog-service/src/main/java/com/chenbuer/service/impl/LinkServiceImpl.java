package com.chenbuer.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.chenbuer.dao.LinkDao;
import com.chenbuer.entity.Link;
import com.chenbuer.service.LinkService;

import javax.annotation.Resource;
import java.util.List;

/**
 * linkService��ʵ����
 * @author czy
 *
 */
@Service
public class LinkServiceImpl implements LinkService {
	
	@Resource
	private LinkDao linkDao;

	public List<Link> list() {
		return linkDao.list();
	}


}
