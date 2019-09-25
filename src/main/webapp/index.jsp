<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>博峰嘉洲之乎</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="images/favicon.png" />
	
    <!-- Style Sheet-->
    <link rel="stylesheet" href="style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css'  href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='responsive-css-css'  href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='pretty-photo-css-css'  href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
    <link rel='stylesheet' id='main-css-css'  href='css/main5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='custom-css-css'  href='css/custom5152.html?ver=1.0' type='text/css' media='all' />
	
	<style>
			input{
				/* width: 400px;
				height: 30px; */
				display: block;
				/* margin: 0 auto;
				margin-top: 300px; */
			}
			.n2{
				border: 1px solid groove;
				margin-left:102px;
				display: block;
		
			}
			.n3{
				width: 833px;
				height: 30px;
				line-height: 30px;
				padding-left: 10px;
				background-color: white;
			}
			.n3:hover{
				background-color: deepskyblue;
			}
		</style>
	
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
			$(function(){
				$("#s").keyup(function(){
					var str=$(this).val();
					console.log(str);
					if(str==""){
						$("#search-result").css("display","none");
					}else{
						$.ajax({
							url:"GetDimtitleByStr",
							type:"post",
							data:{"str":str},
							dataType:"json",
							success:function(data){
								var hh="";
								 $(data).each(function(i,s){/* <a href="ArticleSelectedServlet?SelectedAid=1">标题：作者：</a> */
									hh+="<div class='n3'><font size='2'><a href='ArticleSelectedServlet?SelectedAid="+s.aid+"'>标题："+s.atitle+"\tb"+"作者："+s.username+"文章Aid:"+s.aid+"</a></font></div>";
								 })
								$(".n2").html(hh);
								$(".n2").css("display","block");
							}
						})  
					}
				})
			})
		</script>
	
  </head>
  
  <body>

                <!-- Start of Header -->
                <div class="header-wrapper">
                        <header>
                                <div class="container">


                                        <div class="logo-container">
                                                <!-- Website Logo -->
                                                <a href="index-2.html"  title="Knowledge Base Theme">
                                                        <img src="images/logo.png" alt="Knowledge Base Theme">
                                                </a>
                                                <span class="tag-line">分享你的快乐</span>
                                        </div>


                                        <!-- Start of Main Navigation -->
                                        <nav class="main-nav">
                                                <div class="menu-top-menu-container">
                                                        <ul id="menu-top-menu" class="clearfix">
                                                              
                                                                <li><a href="articles-list.html">文章列表</a></li>
                                                                <li><a href="faq.html">常见问题解答</a></li>
                                                                <li><a href="#">皮肤</a>
                                                                        <ul class="sub-menu">
                                                                                <li><a href="blue-skin.html">蓝皮肤</a></li>
                                                                                <li><a href="green-skin.html">绿皮肤</a></li>
                                                                                <li><a href="red-skin.html">红皮肤</a></li>
                                                                                <li><a href="index-2.html">默认皮肤</a></li>
                                                                        </ul>
                                                                </li>
                                                                <li><a href="#">更多</a>
                                                                        <ul class="sub-menu">
                                                                                <li><a href="full-width.html">平铺</a></li>
                                                                                <li><a href="elements.html">分子</a></li>
                                                                                <li><a href="page.html">标准页面</a></li>
                                                                        </ul>
                                                                </li>
                                                                <li><a href="contact.html">联系</a></li>
                                                        </ul>
                                                </div>
                                        </nav>
                                        <!-- End of Main Navigation -->

                                </div>
                        </header>
                </div>
                <!-- End of Header -->

                <!-- Start of Search Wrapper -->
                <div class="search-area-wrapper">
                        <div class="search-area container" style="position: relative;">
                                <h3 class="search-header">Have a Question?</h3>
                                <p class="search-tag-line">你想知道的？这全都有！</p>

                                <form id="search-form" class="search-form clearfix" method="get" action="SearchResultBybtnServlet" autocomplete="off">
                                        <input class="search-term required" style="height: 48px" type="text" id="s" name="str" placeholder="请在这里输入关键字" title="* Please enter a search term!" />
                                        <input class="search-btn" type="submit" value="Search" />
                                        <div id="search-result" class="n2" style="position: absolute; z-index: 999"></div>
                                </form>
                        </div>
                </div>
                <!-- End of Search Wrapper -->

                <!-- Start of Page Container -->
                <div class="page-container">
                        <div class="container">
                                <div class="row">

                                        <!-- start of page content -->
                                        <div class="span8 page-content">

                                                <!-- Basic Home Page Template -->
                                                <div class="row separator">
                                                        <section class="span4 articles-list">
                                                                <h3>精选文章</h3>
                                                                <ul class="articles">
<!-- ========================================================================================================================================== -->
                                                                	<c:forEach var="ApList" items="${ArticleListOrderbyPraisenum }" end="9">
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="ArticleSelectedServlet?SelectedAid=${ApList.aid }">${ApList.atitle }</a></h4>
                                                                                <span class="article-meta">${ApList.adatetime }<a href="#" title="The author">${ApList.username }</a></span>
                                                                                <span class="like-count">${ApList.praisenum }</span>
                                                                        </li>
                                                                	 </c:forEach>
                                                                </ul>
                                                        </section>

                                                        <section class="span4 articles-list">
                                                                <h3>最新文章</h3>
                                                                <ul class="articles">
                                                                	<c:forEach var="AtList" items="${ArticleListOrderbyTime }" end="9">
                                                                        <li class="article-entry standard">
                                                                                <h4><a href="ArticleSelectedServlet?SelectedAid=${AtList.aid }">${AtList.atitle }</a></h4>
                                                                                <span class="article-meta">${AtList.adatetime }<a href="#" title="The author">${AtList.username }</a></span>
                                                                                <span class="like-count">${AtList.praisenum }</span>
                                                                        </li>
                                                                	</c:forEach>
                                                                </ul>
                                                        </section>
                                                </div>

                                                <div class="row home-category-list-area">
                                                        <div class="span8">
                                                                <h2>分类</h2>
                                                        </div>
                                                </div>

                                                <div class="row-fluid top-cats">

                                                        <section class="span4">
                                                                <h4 class="category"><a href="#">电影</a></h4>
                                                                <div class="category-description">
                                                                        <p>休闲娱乐，精彩好片</p>
                                                                </div>
                                                        </section>

                                                        <section class="span4">
                                                                <h4 class="category"><a href="#">动漫</a></h4>
                                                                <div class="category-description">
                                                                        <p>带你走进二次元奇妙世界</p>
                                                                </div>
                                                        </section>

                                                        <section class="span4">
                                                                <h4 class="category"><a href="#">生活</a></h4>
                                                                <div class="category-description">
                                                                        <p>生活趣事，分享欢乐</p>
                                                                </div>
                                                        </section>
                                                </div>
                                                <div class="row-fluid top-cats">

                                                        <section class="span4">
                                                                <h4 class="category"><a href="#">游戏</a></h4>
                                                                <div class="category-description">
                                                                        <p>新游好游，电子竞技</p>
                                                                </div>
                                                        </section>

                                                        <section class="span4">
                                                                <h4 class="category">
                                                                        <a href="#">学习</a></h4>
                                                                <div class="category-description">
                                                                        <p>如何学习？来听听大神怎么说？</p>
                                                                </div>
                                                        </section>

                                                        <section class="span4">
                                                                <h4 class="category"><a href="#">国外</a></h4>
                                                                <div class="category-description"><p>国外动向，开拓眼界</p>
                                                                </div>
                                                        </section>
                                                </div>

                                        </div>
                                        <!-- end of page content -->


                                        <!-- start of sidebar -->
                                        <aside class="span4 page-sidebar">

                                                <section class="widget">
                                                        <div class="support-widget">
                                                                <h3 class="title">帮助</h3>
                                                                <p class="intro">需要更多帮助？如果您没有找到答案，请联系我们获取进一步的帮助。</p>
                                                        </div>
                                                </section>

                                                <section class="widget">
                                                        <div class="quick-links-widget">
                                                                
                                                                <ul id="menu-quick-links" class="menu clearfix">
                                                                      <li><a href="index-2.html" style="font-size: 20px;margin-left: 20px;"><b>写回答</b></a></li>
                                                                      <li><a href="writing.jsp" style="font-size: 20px;margin-left: 20px;"><b>写文章</b></a></li>
                                                                </ul>
                                                        </div>
                                                </section>

                                                <section class="widget">
                                                        <h3 class="title">Tags</h3>
                                                        <div class="tagcloud">
                                                                <a href="#" class="btn btn-mini">basic</a>
                                                                <a href="#" class="btn btn-mini">beginner</a>
                                                                <a href="#" class="btn btn-mini">blogging</a>
                                                                <a href="#" class="btn btn-mini">colour</a>
                                                                <a href="#" class="btn btn-mini">css</a>
                                                                <a href="#" class="btn btn-mini">date</a>
                                                                <a href="#" class="btn btn-mini">design</a>
                                                                <a href="#" class="btn btn-mini">files</a>
                                                                <a href="#" class="btn btn-mini">format</a>
                                                                <a href="#" class="btn btn-mini">header</a>
                                                                <a href="#" class="btn btn-mini">images</a>
                                                                <a href="#" class="btn btn-mini">plugins</a>
                                                                <a href="#" class="btn btn-mini">setting</a>
                                                                <a href="#" class="btn btn-mini">templates</a>
                                                                <a href="#" class="btn btn-mini">theme</a>
                                                                <a href="#" class="btn btn-mini">time</a>
                                                                <a href="#" class="btn btn-mini">videos</a>
                                                                <a href="#" class="btn btn-mini">website</a>
                                                                <a href="#" class="btn btn-mini">wordpress</a>
                                                        </div>
                                                </section>

                                        </aside>
                                        <!-- end of sidebar -->
                                </div>
                        </div>
                </div>
                <!-- End of Page Container -->

                <!-- Start of Footer -->
                <footer id="footer-wrapper">
                        <div id="footer" class="container">
                                <div class="row">

                                        <div class="span3">
                                                <section class="widget">
                                                        <h3 class="title">如何运作</h3>
                                                        <div class="textwidget">
                                                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                                                                <p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>
                                                        </div>
                                                </section>
                                        </div>

                                        <div class="span3">
                                                <section class="widget"><h3 class="title">分类</h3>
                                                        <ul>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">电 影</a> </li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">动 漫</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">生 活</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet, ">游 戏</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">学 习</a></li>
                                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">国 外</a></li>
                                                                
                                                        </ul>
                                                </section>
                                        </div>

                                        <div class="span3">
                                                <section class="widget">
                                                        <h3 class="title">最新推文</h3>
                                                        <div id="twitter_update_list">
                                                                <ul>
                                                                        <li>没有推文加载</li>
                                                                </ul>
                                                        </div>
                                                        
                                                </section>
                                        </div>

                                        <div class="span3">
                                                <section class="widget">
                                                        <h3 class="title">照片</h3>
                                                        <div class="flickr-photos" id="basicuse">
                                                        </div>
                                                </section>
                                        </div>

                                </div>
                        </div>
                        <!-- end of #footer -->

                        <!-- Footer Bottom -->
                       
                        <!-- End of Footer Bottom -->

                </footer>
                <!-- End of Footer -->

                <a href="#top" id="scroll-top"></a>

                <!-- script -->
                <script type='text/javascript' src='js/jquery-1.8.3.min.js'></script>
                <script type='text/javascript' src='js/jquery.easing.1.3.js'></script>
                <script type='text/javascript' src='js/prettyphoto/jquery.prettyPhoto.js'></script>
                <script type='text/javascript' src='js/jflickrfeed.js'></script>
                <script type='text/javascript' src='js/jquery.liveSearch.js'></script>
                <script type='text/javascript' src='js/jquery.form.js'></script>
                <script type='text/javascript' src='js/jquery.validate.min.js'></script>
                <script type='text/javascript' src='js/custom.js'></script>

        </body>
</html>
