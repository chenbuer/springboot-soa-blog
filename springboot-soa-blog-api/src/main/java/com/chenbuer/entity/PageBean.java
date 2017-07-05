package com.chenbuer.entity;

import java.io.Serializable;

public class PageBean implements Serializable{

	private int page;//�ڼ�ҳ
	private int pageSize;//ÿҳ��¼��
	private int start;//��ʼҳ�������SQL��ʹ�ã������Լ���������
	
	public PageBean() {
	}

	public PageBean(int page, int pageSize) {
		super();
		this.page = page;
		this.pageSize = pageSize;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	//��ȡ��start����
	public int getStart() {
		start = (page-1)*pageSize;
		return start;
	}
	
}
