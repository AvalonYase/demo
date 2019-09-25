package com.chinasoft.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasoft.biz.Articlebiz;
import com.chinasoft.biz.Usersbiz;
import com.chinasoft.dao.ArticleMapper;

@Controller
@RequestMapping("/")
public class ArticleAction {
	@Autowired
	private Articlebiz ab;
	
	public Articlebiz getAb() {
		return ab;
	}

	public void setAb(Articlebiz ab) {
		this.ab = ab;
	}
	
	
}
