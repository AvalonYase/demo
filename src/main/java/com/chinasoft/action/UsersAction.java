package com.chinasoft.action;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasoft.biz.Articlebiz;
import com.chinasoft.biz.Usersbiz;
import com.chinasoft.dao.ArticleMapper;
import com.chinasoft.dao.UsersMapper;
import com.chinasoft.entity.Users;

@Controller
@RequestMapping("/")
public class UsersAction {
	@Autowired
	private Usersbiz ub;
	@Autowired
	private Articlebiz ab;
	
	public Articlebiz getAb() {
		return ab;
	}

	public void setAb(Articlebiz ab) {
		this.ab = ab;
	}

	public Usersbiz getUb() {
		return ub;
	}

	public void setUb(Usersbiz ub) {
		this.ub = ub;
	}
	
	@RequestMapping("/register")
	public ModelAndView register(String registername,String registerpass,HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();		
		Users u=new Users();
		u.setUsername(registername);
		u.setPassword(registerpass);
		
		if(ub.creatNewUser(u)) {
			request.setAttribute("LoginMsg", "注册成功！快来登录吧");
			mav.setViewName("login.jsp");
		}else {
			request.setAttribute("Regmsg", "咦？出现了点意外");
			mav.setViewName("register.jsp");
		}
		return mav;
	}
	
	@RequestMapping("/checkLogin")
	public ModelAndView checkLogin(String logname,String logpass) {
		ModelAndView mav=new ModelAndView();
		Users u=ub.checkLogin(logname, logpass);
		if(u!=null) {
			mav.setViewName("index.jsp");
			mav.addObject("user", u.getUsername());
			System.out.println("执行此处");
			mav.addObject("ArticleListOrderbyTime", ab.getAllArticleOrderbyTime());
			mav.addObject("ArticleListOrderbyPraisenum", ab.getAllArticleOrderbyPraisenum());
		}else {
			mav.setViewName("login.jsp");
		}
		return mav;
	}
}
