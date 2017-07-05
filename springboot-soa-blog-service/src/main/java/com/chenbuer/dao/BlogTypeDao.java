package com.chenbuer.dao;

import com.chenbuer.entity.BlogType;

import java.util.List;

/**
 * ��������DAO�ӿ�
 * @author czy
 *
 */
public interface BlogTypeDao {
	List<BlogType> countList();
	BlogType findById(Integer id);
}
