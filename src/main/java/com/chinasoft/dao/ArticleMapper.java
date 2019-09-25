package com.chinasoft.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.entity.Article;

@Repository
@Transactional
@Mapper
public interface ArticleMapper {
	//public boolean creatNewArticle(Article article);//发布新文章
	public Article getArticle(int uid,String atitle);//得到完整a对象（连表查）
	//public boolean DeleteArticle(int aid);//删除文章（删前需判断作者）
	public boolean UpdateCommentsnum(int commentsnum,int aid);//更新评论数
	public boolean UpdatePraisenum(int praisenum,int aid);//更新点赞数
	
	@Select("select * from article a left join user u on a.uid=u.uid ORDER BY a.adatetime desc")
	public List<Article> getAllArticleOrderbyTime();//得到所有文章(时间降序)
	@Select("select * from article a left join user u on a.uid=u.uid ORDER BY a.praisenum desc")
	public List<Article> getAllArticleOrderbyPraisenum();//得到所有文章(点赞降序)
	//public Article getArticleByAid(int aid);//得到完整a对象（aid）
	
	@Select("select distinct a.aid, a.uid, u.username, a.atitle, a.acontent, "
			+ "a.adatetime, a.commentsnum, a.praisenum from article a left join user u "
			+ "on a.uid=u.uid where a.atitle like '%#{str}%' or u.username like '%#{str}%'")
	public List<Article> dimGetArticle(String str);//模糊查询
	
	int deleteByPrimaryKey(Integer aid);//删除文章（删前需判断作者）

    int insert(Article record);//发布新文章

    int insertSelective(Article record);

    Article selectByPrimaryKey(Integer aid);//得到完整a对象（aid）

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
}
