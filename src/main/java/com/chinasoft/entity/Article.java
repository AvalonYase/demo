package com.chinasoft.entity;

import java.io.Serializable;


public class Article implements Serializable {
	private int aid;			//文章id
	private int uid;			//作者id
	private String username;	//作者名（数据库无此字段，连表查询）
	private String atitle;		//文章标题
	private String acontent;	//正文
	private String adatetime;	//发布时间
	private int commentsnum;	//评论数
	private int praisenum;		//点赞数
	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Article(int aid, int uid, String username, String atitle,
			String acontent, String adatetime, int commentsnum, int praisenum) {
		super();
		this.aid = aid;
		this.uid = uid;
		this.username = username;
		this.atitle = atitle;
		this.acontent = acontent;
		this.adatetime = adatetime;
		this.commentsnum = commentsnum;
		this.praisenum = praisenum;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public String getAcontent() {
		return acontent;
	}
	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}
	public String getAdatetime() {
		return adatetime;
	}
	public void setAdatetime(String adatetime) {
		this.adatetime = adatetime;
	}
	public int getCommentsnum() {
		return commentsnum;
	}
	public void setCommentsnum(int commentsnum) {
		this.commentsnum = commentsnum;
	}
	public int getPraisenum() {
		return praisenum;
	}
	public void setPraisenum(int praisenum) {
		this.praisenum = praisenum;
	}
	@Override
	public String toString() {
		return "article [aid=" + aid + ", uid=" + uid + ", username="
				+ username + ", atitle=" + atitle + ", acontent=" + acontent
				+ ", adatetime=" + adatetime + ", commentsnum=" + commentsnum
				+ ", praisenum=" + praisenum + "]";
	}
}
