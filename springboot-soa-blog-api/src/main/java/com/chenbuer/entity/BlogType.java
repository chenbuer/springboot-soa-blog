package com.chenbuer.entity;

import java.io.Serializable;

/**
 * ��������ʵ����
 * @author czy
 *
 */
public class BlogType implements Serializable{
	private int id;
	private String typeName;
	private int orderNo;

	private int blogCount;//���type���ж��ٸ�������������ݿ��е��ֶΣ������Լ�ͳ�Ƶġ�

	@Override
	public String toString() {
		return "BlogType{" +
				"id=" + id +
				", typeName='" + typeName + '\'' +
				", orderNo=" + orderNo +
				", blogCount=" + blogCount +
				'}';
	}

	public int getBlogCount() {
		return blogCount;
	}
	public void setBlogCount(int blogCount) {
		this.blogCount = blogCount;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

}
