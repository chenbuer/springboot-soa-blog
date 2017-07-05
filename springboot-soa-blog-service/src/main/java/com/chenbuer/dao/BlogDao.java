package com.chenbuer.dao;

import com.chenbuer.entity.Blog;

import java.util.List;
import java.util.Map;

/**
 * �û�DAO�ӿ�
 * @author czy
 *
 */
public interface BlogDao {


	/**
	 * ���·��г�Blog
	 * @return
	 */
	List<Blog> countList();
	
	/**
	 * ��ҳ��ѯBlog
	 * @param map
	 * @return
	 */
	List<Blog> listBlogWithPage(Map map);
	
	/**
	 * ��ѯBlog����
	 * @return
	 */
	int getBlogCount(Map map);
	
	/**
	 * ��Ӳ���
	 * @param blog
	 */
	void save(Blog blog);
	
	/**
	 * ɾ������
	 * @param id
	 */
	void delete(Integer id);
	
	/**
	 * ����Id�ҵ�Blog
	 * @param id
	 * @return
	 */
	Blog findById(Integer id);
	
	/**
	 * �޸�Blog
	 * @param map
	 */
	void update(Blog blog);

	List<Blog> getBlogsByTypeName(String typeName);
}
