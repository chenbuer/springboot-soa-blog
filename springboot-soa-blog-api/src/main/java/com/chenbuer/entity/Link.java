package com.chenbuer.entity;

import java.io.Serializable;

/**
 * ��������
 * @author czy
 *
 */
public class Link implements Serializable{
	private int id;
	private String linkName;
	private String linkUrl;
	private int linkNo;//�������ȼ�

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLinkName() {
		return linkName;
	}
	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}
	public String getLinkUrl() {
		return linkUrl;
	}
	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}
	public int getLinkNo() {
		return linkNo;
	}
	public void setLinkNo(int linkNo) {
		this.linkNo = linkNo;
	}
	
	

	
}
