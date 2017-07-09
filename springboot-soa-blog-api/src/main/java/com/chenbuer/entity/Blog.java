package com.chenbuer.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * blog实体类
 * @author czy
 *
 */
public class Blog implements Serializable{
	private Integer id;
	private String title;
	private String summary;//ժҪ
	private Date releaseDate;
	private int clickHit;//�Ķ�����
	private int replyHit;//���۴���
	private String content;
	private String keyWord;//�ؼ����ö��ŷֿ�
	
	private BlogType blogType;//typeId���ã�������BlogType����
	private Integer typeId;
	private String releaseDateStr;//�����ݿ���û�С�
	private int blogCount;//������ʾ��ĳ���·ݲ��͵����������ݿ���û�С�
	
	public Blog() {
	}

	@Override
	public String toString() {
		return "Blog{" +
				"id=" + id +
				", title='" + title + '\'' +
				", summary='" + summary + '\'' +
				", releaseDate=" + releaseDate +
				", clickHit=" + clickHit +
				", replyHit=" + replyHit +
				", content='" + content + '\'' +
				", keyWord='" + keyWord + '\'' +
				", blogType=" + blogType +
				", typeId=" + typeId +
				", releaseDateStr='" + releaseDateStr + '\'' +
				", blogCount=" + blogCount +
				'}';
	}

	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	public int getClickHit() {
		return clickHit;
	}
	public void setClickHit(int clickHit) {
		this.clickHit = clickHit;
	}
	public int getReplyHit() {
		return replyHit;
	}
	public void setReplyHit(int replyHit) {
		this.replyHit = replyHit;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public BlogType getBlogType() {
		return blogType;
	}
	public void setBlogType(BlogType blogType) {
		this.blogType = blogType;
	}
	public String getReleaseDateStr() {
		return releaseDateStr;
	}
	public void setReleaseDateStr(String releaseDateStr) {
		this.releaseDateStr = releaseDateStr;
	}
	public int getBlogCount() {
		return blogCount;
	}
	public void setBlogCount(int blogCount) {
		this.blogCount = blogCount;
	}

	
}
