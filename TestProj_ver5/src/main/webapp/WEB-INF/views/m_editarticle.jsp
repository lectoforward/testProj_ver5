<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko-KR">
<head>
<title></title>

<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
.contain{
	width: 100%;
	text-align:center;
} 

.max_container > ul{
	padding: 0 0 0 40%;
}
.top{
	padding: 0 0 0 87%;
}
</style>
<link rel='stylesheet' id='dashicons-css'  href='http://192.168.30.24/webProject/css/dashicons.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='post-views-counter-frontend-css'  href='http://192.168.30.24/webProject/css/frontend.css?ver=4.7.3' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-fonts-css'  href='https://fonts.googleapis.com/css?family=Montserrat%3A400%2C700%7CInconsolata%3A400&#038;subset=latin%2Clatin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='genericons-css'  href='http://192.168.30.24/webProject/css/genericons.css' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-style-css'  href='http://gangwon-fc.com/wp-content/themes/gangwonfc/style.css?ver=4.7.3' type='text/css' media='all' />
<link rel='stylesheet' id='jquery-ui-css'  href='http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='unslider-css'  href='http://192.168.30.24/webProject/css/unslider.css' type='text/css' media='all' />
<!-- <link rel='stylesheet' id='metabrain-editor-custom-css-css'  href='http://192.168.30.24//css/custom-editor.css' type='text/css' media='all' /> -->
<script type='text/javascript' src='http://192.168.30.24/webProject/js/jquery.js'></script>
<script type='text/javascript' src='http://192.168.30.24/webProject/js/jquery-migrate.min.js'></script>
<script type='text/javascript' src='http://192.168.30.24/webProject/js/jquery-ui.min.js'></script>
<script type='text/javascript' src='http://192.168.30.24/webProject/js/unslider.js'></script>
<script type='text/javascript' src='http://192.168.30.24/webProject/js/rangy-core.js'></script>
<script type='text/javascript' src='http://192.168.30.24/webProject/js/metabrain-editor-0.1.1.js'></script>
<script type='text/javascript' src='http://192.168.30.24/webProject/js/custom.js'></script>
<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
<link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/css/template.css?20170607" type="text/css" media="all">
<!-- <link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/metabrain-editor/css/metabrain-editor.css" type="text/css" media="all"> -->
<link rel='stylesheet' id='mycss'  href='http://192.168.30.24/webProject/css/mycss.css' type='text/css' media='all' />
<script type="text/javascript" src="http://192.168.30.24/webProject/js/common.js"></script>
</head>

<body class="page-template page-template-templates page-template-board-write page-template-templatesboard-write-php page page-id-298 logged-in group-blog write_edit">
<div class="site_wrap">
<div id="page" class="site">
	<div class="mobile_nav_onbg"></div>
	<div class="site-inner">
		<!-- 헤더 -->
		<div id="masthead" class="site-header" role="banner">
			<div class="hover_bg"></div>
			<!-- 상단헤더 -->
			<div class="top_headbx">
				<div class="max_container">
					<!-- 모바일 메뉴버튼 -->
					<button class="m_menubox">
						<span class="bar first"></span>
						<span class="bar center"></span>
						<span class="bar last"></span>
					</button>
					<!-- .모바일 메뉴버튼 -->
					<!-- SNS -->
					<div class="head_sns_bx">
						<ul>
							<li class="instargram"><a href="https://www.instagram.com/">instargram</a></li>
							<li class="facebook"><a href="https://www.facebook.com/" target="_blank">facebook</a></li>
							<li class="youtube"><a href="http://www.youtube.com/" target="_blank">youtube</a></li>
						</ul>
					</div>
					<!-- .SNS -->
					<!-- 링크박스 -->
					<div class="head_linkbx"><!-- 사이트맵 클릭시 active 클래스 적용 -->
						<ul>
							<li><a href="#">LOGOUT</a></li>
							<li><a href="#">MY PAGE</a></li>
						</ul>
					</div>
					<!-- .링크박스 -->
					<!-- 서치버튼 -->
					<!--<div class="search_btn"><a class="search_item" href="#;">검색하기</a></div>-->
					<!-- .서치버튼 -->
				</div>
			</div>
			<!-- .상단헤더 -->
						<!-- 하단헤더 -->
	<div class="nav_headbx">
				<div class="max_container">
					<div id="site-header-menu" class="site-header-menu">
						<nav id="site-navigation" class="main-navigation" role="navigation" aria-label="기본 메뉴">
							<div class="menu-main_nav-container">
							<ul id="menu-main_nav-1" class="primary-menu">
							<li class="nav_greatu menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-91">
							<a href="#">Home</a>
							<ul class="sub-menu">
								<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-92" id="bo1"><a href="#">공지사항</a></li>
								<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-95" id="bo2"><a href="#">자유게시판</a>
									<ul class="sub-menu">
										<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7014"><a href="#">Q&#038;A</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="nav_about menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1167"><a href="#">Smash</a>
						<ul class="sub-menu">
							<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-97"><a href="#">Smash 소개</a></li>
							<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-99"><a href="#">Smash 이용 방법</a>
						<ul class="sub-menu">
					<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7020"><a href="#">연혁</a></li>
	</ul>
</li>
</li>
</ul>
</li>
<li class="nav_athlete menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-103"><a href="#">축구</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">축구 게시판</a></li>
</ul>
</li>
<li class="nav_match menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-105"><a href="#">야구</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">야구 게시판</a></li>
</ul>
</li>
<li class="nav_media menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-110"><a href="#">배드민턴</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">배드민턴 게시판</a></li>
</ul>
</li>
<li class="nav_youth menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-114"><a href="#">농구</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">농구 게시판</a></li>
</ul>
</li>
<li class="nav_management menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-119"><a href="#">e-Sports</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">e-Sports 게시판</a></li>
</ul>
</li>
<li class="nav_quick menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1161"><a href="#;">Quick Menu</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-123"><a target="_blank" href="#">고객센터</a></li>
</ul>
</li>
</ul>
</div>
</nav><!-- .main-navigation -->
</div><!-- .site-header-menu -->						
</div>
			</div>
			<!-- .하단헤더 -->
		</div>
		<!-- .헤더 -->
		<div id="" class="site-content">
<!-- 상단배너 -->

<div class="pg_topbannerbx">
	<div class="bg"></div>
	<div class="max_container">
		<!-- 타이틀 박스 -->
		<div class="title_bx">
			<h2 class="entry-title">글쓰기</h2>
						<!-- 빵가루 -->
			<div class="breadcrumb">
				<ul>
					<li class="home"><a class="item" href="/index">home</a></li>						
					<li><a class="item" href="">home</a></li>						
				</ul>
			</div>
			<!-- .빵가루 -->
					</div>
		<!-- .타이틀 박스 -->
	</div>
</div>
<!-- .상단배너 -->
<div id="primary" class="content-area">
	<div id="main" class="site-main" role="main">
		<div class="content_rowbx">
			<div class="max_container">
				
				<article id="post-298" class="post-298 page type-page status-publish hentry">



					<div class="entry-content">
						<!-- 컨텐츠 시작 -->
						<!-- 싱글페이지 -->
						<!--  데이터  -->
						<div class="single_pgbx single_edit">
							<form id="formWrite">
								<input type="hidden" name="articleVO" value="${articleVO}" />
								<input type="hidden" name="userId" value="${sessionScope.id}" />
								<input type="hidden" name="content" id="content" value=""/>
								<input type="hidden" name="title" id="title" value=""/>
								<input type="hidden" name="boardCode" value="${articleVO.boardCode}" />
								<input type="hidden" name="articleHits" value="${articleVO.articleHits}">
								<!-- <input type="hidden" name="category" value=""> -->
								<input type="hidden" name="action" value="write_board"> 
						<!--  데이터  -->

								<!--  싱글페이지 헤더 -->
								<div class="single_headbx two" >
									<div class="single_tblbx">
										<div class="title_bx"><input type="text" name="articleTitle" class="single_edit_title" placeholder="제목을 입력해주세요." value=""></div>
									</div>
								</div>
								<!--  .싱글페이지 헤더-->
								<!-- 싱글컨텐츠 -->
								<div class="single_contbx">
									<div class="single_container">
										<div>
											<textarea name="Content" id="articleContent" style="resize: none; width:100%; height:600px" placeholder="${articleVO.articleContent}"></textarea>
										</div>
									</div>
								</div>
								<!-- .싱글컨텐츠 -->
								<!-- 목록버튼 -->
								<div class="listButtonBx">
									<a class="btns addButton"><span class="text">글등록</span></a>
								</div>
								<!-- .목록버튼 -->
							</form>
						</div>
						<!-- .싱글페이지 -->
						<!-- .컨텐츠 시작 -->
					</div><!-- .entry-content -->
				</article><!-- #post-## -->
			</div>
		</div>
	</div><!-- .site-main -->
</div>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
jQuery(document).ready(function($){
	$(".single_edit_title").val("${articleVO.articleTitle}");
	$("#articleContent").val("${articleVO.articleContent}");
	$('.addButton').on('click', function(e){
		$("#content").val($("#articleContent").val());
		$("#title").val($(".single_edit_title").val());
		var content = $("#articleContent").val();
		var $form= $("#formWrite");
		$form.attr('method', 'POST');
		$form.attr('action','/m_editarticle');
		$("#content").val(content);
		$form.submit();
	});
});	
</script>

		</div><!-- .site-content -->

		<div id="colophon" class="site-footer" role="contentinfo">
				<!-- 푸터네비게이션 -->
			<div class="footer_navbx">
				<div class="max_container">
					<ul>
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">이메일무단수집거부</a></li>
					</ul>
				</div>
			</div>
			<!-- .푸터네비게이션 -->
					<!-- 푸터컨텐츠 -->
			<div class="footer_contbx">
				<div class="max_container contain">
					<div class="cont">
						<div class="_infobx">
							<span class="item">사무실 : 서울 관악구 관악로24길 14 렉토피아</span>
							<span class="item">TEL 070-1234-5678</span>
						</div>
						<p class="copyright">Copyright 2018 <span class="color">©Fourward</span> ALL RIGHTS RESERVED. </p>
					</div>
				</div>
			</div>
			<!-- .푸터컨텐츠 -->
		</div><!-- .site-footer -->
	</div><!-- .site-inner -->
</div><!-- .site -->

	
<script type='text/javascript'>
</script>
<!-- <script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/js/functions.js?ver=20160816'></script> -->
<script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/functions/kmcis/kmcis.js'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/functions/validation/validation.js'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/wp-embed.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/underscore.min.js?ver=1.8.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/shortcode.min.js?ver=4.7.3'></script>
<script type='text/javascript'>

</script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/utils.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/backbone.min.js?ver=1.2.3'></script>
<script type='text/javascript'>

</script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/wp-util.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/wp-backbone.min.js?ver=4.7.3'></script>
<script type='text/javascript'>

</script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/media-models.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/plupload/plupload.full.min.js?ver=2.1.8'></script>
<script type='text/javascript'>
</script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/plupload/wp-plupload.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/ui/sortable.min.js?ver=1.11.4'></script>
<script type='text/javascript'>
</script>
</div>

</body>
</html>