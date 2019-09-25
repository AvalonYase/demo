package com.chinasoft.biz;

import java.util.List;

import com.chinasoft.entity.Article;
import com.chinasoft.entity.Users;

public interface Articlebiz {
	public Article creatNewArticle(Article article);//发布新文章
	public boolean DeleteArticle(Article article,Users user);//作者删除文章
	//更新评论数包含于新建评论中
	public boolean UpdatePraisenum(Article article);//点赞数+1
	public List<Article> getAllArticleOrderbyTime();//得到所有文章(时间降序)
	public List<Article> getAllArticleOrderbyPraisenum();//得到所有文章(点赞降序)
	public List<Article> dimGetArticle(String str);//模糊查询
}
