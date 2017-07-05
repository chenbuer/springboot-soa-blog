package com.chenbuer.entity;

import java.io.Serializable;
import java.util.List;
/**
 * ���entity�Ǻ�̨������blog��datagridʱ���������صĽṹ�����Բμ�http://www.jeasyui.net/tutorial/21.html
 * @author czy
 *
 */
public class AdminBlogList implements Serializable{
	private List<Blog> rows;
	private int total;

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<Blog> getRows() {
		return rows;
	}

	public void setRows(List<Blog> rows) {
		this.rows = rows;
	}
	
}
