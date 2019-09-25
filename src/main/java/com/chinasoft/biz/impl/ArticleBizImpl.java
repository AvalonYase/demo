package com.chinasoft.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.biz.Articlebiz;
import com.chinasoft.dao.ArticleMapper;
import com.chinasoft.dao.UsersMapper;
import com.chinasoft.entity.Article;
import com.chinasoft.entity.Users;
@Service
@Transactional
public class ArticleBizImpl implements Articlebiz {
	@Autowired
	private ArticleMapper am;
	public Article creatNewArticle(Article article) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArticleMapper getAm() {
		return am;
	}

	public void setAm(ArticleMapper am) {
		this.am = am;
	}

	public boolean DeleteArticle(Article article, Users user) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean UpdatePraisenum(Article article) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Article> getAllArticleOrderbyTime() {
		// TODO Auto-generated method stub
		System.out.println("biz层");
		System.out.println("集合数量："+am.getAllArticleOrderbyTime().size());
		System.out.println("没出错！");
		return am.getAllArticleOrderbyTime();
	}

	public List<Article> getAllArticleOrderbyPraisenum() {
		// TODO Auto-generated method stub
		return am.getAllArticleOrderbyPraisenum();
	}

	public List<Article> dimGetArticle(String str) {
		// TODO Auto-generated method stub
		return null;
	}

}
