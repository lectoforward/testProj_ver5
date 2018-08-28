<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko-KR"
	itemscope
	itemtype="http://schema.org/Article"
	prefix="og: http://ogp.me/ns#"  class="no-js">
	<%-- <%@ include file="/userheader.jsp" %>  --%>
<head>

<link rel='stylesheet' id='post-views-counter-frontend-css'  href='http://gangwon-fc.com/wp-content/plugins/post-views-counter/css/frontend.css?ver=4.7.3' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-fonts-css'  href='https://fonts.googleapis.com/css?family=Montserrat%3A400%2C700%7CInconsolata%3A400&#038;subset=latin%2Clatin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='genericons-css'  href='http://gangwon-fc.com/wp-content/themes/gangwonfc/genericons/genericons.css?ver=3.4.1' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-style-css'  href='http://gangwon-fc.com/wp-content/themes/gangwonfc/style.css?ver=4.7.3' type='text/css' media='all' />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- <script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script> -->
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' src='//code.jquery.com/ui/1.11.4/jquery-ui.min.js'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/unslider/unslider.js'></script>
<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
<link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/css/template.css?20170607" type="text/css" media="all">
<link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/metabrain-editor/css/metabrain-editor.css" type="text/css" media="all">
<script type="text/javascript" src="http://gangwon-fc.com/wp-content/themes/gangwonfc/js/common.js?20170607"></script>
<link rel='stylesheet' id='mycss'  href='http://192.168.30.24/webProject/css/mycss.css' type='text/css' media='all' />
</head>

<body class="post-template-default single single-post postid-34855 single-format-standard logged-in group-blog category_one">
<div class="site_wrap">
	<div id="page" class="site">
		<div class="site-inner">
			<div id="content" class="site-content">
				<!-- 상단배너 -->
				<div class="pg_topbannerbx">
	 			<div class="bg"></div>
				<div class="max_container">
		<!-- 타이틀 박스 -->
		<div class="title_bx">
			<h2 class="entry-title">자유게시판</h2>
			<div class="breadcrumb">
				<ul>
					<li class="home"><a class="item" href="/index">home</a></li>
					<li><a class="item" href="#">forward</a></li>						
					<li><a class="item" href="#">자유게시판</a></li>						
				</ul>
			</div>
		</div>
		<!-- .타이틀 박스 -->
	</div>
</div>
<!-- .상단배너 -->

<div id="primary" class="content-area">
	<main id="main" class="site-main" role="main">
		<div class="content_rowbx">
			<div class="max_container">
			<div class="entry-content">
				<!-- 컨텐츠 시작 -->
				<!-- 싱글페이지 -->
				<!-- 테마1 일때 -->
				<c:if test="${themeCode eq 'th1'}">
				<div class="single_pgbx">
					<!--  싱글페이지 헤더 -->
					<div class="single_headbx">
						<div class="single_tblbx">
							<div class="title_bx"><h2 class="single_title">${articleVO.articleTitle}</h2></div>
							<div class="meta_bx">
								<div class="datebx">작성일 : ${articleVO.articleDate}</div>
								<div class="viewbx">조회수 : ${articleVO.articleHits}</div>
							</div>
						</div>
					</div>
					<!--  .싱글페이지 헤더-->
					<!-- 싱글컨텐츠 -->
					<div class="single_contbx">
						<div class="single_container">
							<div class="single_cont">
								<div class="editbx_text">${articleVO.articleContent }</div>
							</div>
						</div>
					</div>
					<!-- .싱글컨텐츠 -->
					<div class="single_commentbx">
						<div class="commentbx">
							<div class="comment_textbx"><span class="color">${articleVO.articleHits}</span>개의 댓글이 달렸습니다.</div>
								<div class="comment_textareabx">
								<form method="POST" id="form_comment_write">
									<input type="hidden" name="articleVO" value="${articleVO}">
									<input type="hidden" name="boardCode" value="${articleVO.boardCode}">
									<input type="hidden" name="action" value="write_comment">
									<label class="comment_textarea_label" for="comment_textarea_label">댓글쓰기</label>
									<textarea id="comment_textarea_label" class="textareabx" name="content" placeholder=""></textarea>
									<input type="submit" class="submitbx" value="댓글쓰기">
								</form>
								<form id="article">
									<input type="hidden" name="articleCode" id="articleCode" value="${articleVO.articleCode}">
									<input type="hidden" name="boardCode" value="${articleVO.boardCode}">
									<input type="hidden" name="articleVO" value="${articleVO}">
								</form>					
							</div>
							<!-- 댓글리스트 -->
							<div class="comment_listbx">
								<ul>
								</ul>
							</div>
							<!-- .댓글리스트 -->
						</div>
					</div>
					<!-- .싱글페이지 -->
					<!-- 목록버튼 -->
					<div class="list_btnbx">
						<a href="/m_board?boardCode=${boardCode}&page=${page}" class="list_btn"><span
							class="text">목록보기</span><i class="icon_item"></i></a>
							<c:if test="${sessionScope.nickname eq articleVO.memberNickname}">
								<a href="#;" class="basic_btn mr5 del_btn" data-post-id="34855"><span
								class="text">삭제</span></a>
								<a href="/m_modifyArticle?boardCode=${boardCode}&page=${page}&articleCode=${articleCode}"
								class="basic_btn mr5"><span class="text" id="articleModify">수정</span></a>
							</c:if>
					</div>
					<!-- .목록버튼 -->
				</c:if>
				
				<!-- 테마2일때 -->
				<c:if test="${themeCode eq 'th2'}">
				<link rel="stylesheet" type="text/css" href="./resources/css/detailarticlecss2.css">
				<div class="single_pgbx">
					<!--  싱글페이지 헤더 -->
					<div class="single_headbx">
						<div class="single_tblbx">
							<div class="title_bx">
								<h2 class="single_title">${articleVO.articleTitle}</h2>
							</div>
							<div class="meta_bx">
								<div class="datebx">작성일 : ${articleVO.articleDate}</div>
								<div class="viewbx">조회수 : ${articleVO.articleHits}</div>
							</div>ㅇ
						</div>
					</div>
					<!--  .싱글페이지 헤더-->
					<!-- 싱글컨텐츠 -->
					<div class="single_contbx">
						<div class="single_container">
							<div class="single_cont">
								<div class="editbx_text">${articleVO.articleContent}</div>
							</div>
						</div>
					</div>
					<!-- .싱글컨텐츠 -->
					<!-- .다운로드 -->
					<div class="single_commentbx">
						<div class="commentbx">
							<div class="comment_textbx">
								<span class="color">0</span>개의 댓글이 달렸습니다.
							</div>
							<div class="comment_textareabx">
								<form
									action="http://gangwon-fc.com/wp-admin/admin-ajax.php"
									method="POST" id="form_comment_write">
									<!-- <input type="hidden" name="write_nonce" value="8e4d70f7da" />
									<input type="hidden" name="pid" value="34855"> -->
									<input type="hidden" name="boardCode"
										value="${articleVO.boardCode}"> <input
										type="hidden" name="action" value="write_comment">
									<label class="comment_textarea_label"
										for="comment_textarea_label">댓글쓰기</label>
									<textarea id="comment_textarea_label" class="textareabx"
										name="content" placeholder=""></textarea>
									<input type="submit" class="submitbx" value="댓글쓰기">
								</form>
							</div>
							<!-- 댓글리스트 -->
							<div class="comment_listbx">
								<ul>
								</ul>
							</div>
							<!-- .댓글리스트 -->
						</div>
					</div>
					<!-- 싱글페이징 -->
				<!-- 	<div class="single_paging">
						<ul>
							<li class="prev"><a class="itembx" href="#;">
									<div class="dis_tblbx">
										<div class="tbl_cellbx subbx">
											<span class="text">이전글</span>
										</div>
										<div class="tbl_cellbx title"></div>
									</div>
							</a></li>
							<li class="next"><a class="itembx" href="#;">
								<div class="dis_tblbx">
									<div class="tbl_cellbx subbx">
										<span class="text">다음글</span>
									</div>
									<div class="tbl_cellbx title"></div>
								</div> 
							</a></li>
						</ul>
					</div> -->
					<!-- .싱글페이징 -->
					<!-- 목록버튼 -->
					<div class="list_btnbx">
						<a href="/m_board?boardCode=${boardCode}&page=${page}" class="list_btn">
						<span class="text">목록보기</span><i class="icon_item"></i></a>
						 <a href="#;" class="basic_btn mr5 del_btn" data-post-id="34855">
						 <span class="text">삭제</span></a> 
						 <a href="#" class="basic_btn mr5">
						 <span class="text">수정</span></a>
					</div>
					<!-- .목록버튼 -->
				</div>
				</c:if>
				<!-- 테마2일때 끝 -->


				<!-- .싱글페이지 -->
				<!-- .컨텐츠 시작 -->
			</div>
			<!-- .entry-content -->
			</article>
			<!-- #post-## -->
		</div>
	</div>

<script type="text/javascript">
jQuery(document).ready(function($){
	var arc = $("#articleCode").val();
	
	if(!admin_ajax || admin_ajax == "undefined"){
		var admin_ajax =  "주소";
	}

	// 댓글 수정
	$('.comment_listbx .itembx .applybx').click(function(){
		$(this).closest('li').find('.comment_textareabx').toggle();
	});

	// 댓글 삭제
	$('.comment_listbx .itembx .delbx').click(function(){
		var cid = $(this).data('comment-id');
		if(confirm('정말 삭제하시겠습니까?')){
			$.ajax({
				url: admin_ajax,
				type: 'POST',
				data: 'action=a_del_comment&cid='+cid,
				success: function(data){
					if(data.success){
						if(data.go){
							location.replace(data.go);
						}

						alert('삭제되었습니다.');
					}
					else if(data.msg){
						alert(data.msg);
					}
				}
			});
		}
	});
	// 글 삭제
	$(".delButton").click(function(){
		if(confirm('정말 삭제하시겠습니까?')){
			var $form = $("#article");
			$form.attr('action', '/m_deleteArticle');
			$form.attr('method', 'POST');
			$form.submit();
		}
	});

	// 글 수정
	$(".updateButton").click(function(){
		var arCode = $("#articleCode").val();
		var $form = $("#article");
		$form.attr('action', '/m_editarticle');
		$form.attr('method', 'GET');
		$form.submit();
	});
	
	
	
	
	// 댓글수정
	$('form[name="updateButton"]').submit(function(e){
		e.stopPropagation();
		e.preventDefault();
		var $form = $(this);

		$.ajax({
			url: $form.attr('action'),
			type: 'POST',
			data: $form.serialize(),
			success: function(data){
				if(data.success){
					if(data.go){
						location.replace(data.go);
					}

					alert('수정되었습니다.');
				}
				else if(data.msg){
					alert(data.msg);
		
					if(data.focus){
						$form.find('*[name="'+data.focus+'"][type!="hidden"]').focus();
					}
				}
			}
		});
	});

	// 댓글쓰기
	$('#form_comment_write').submit(function(e){
		e.stopPropagation();
		e.preventDefault();

				var $form = $(this);

		$.ajax({
			url: $form.attr('action'),
			type: 'POST',
			data: $form.serialize(),
			success: function(data){
				if(data.success){
					if(data.go){
						location.replace(data.go);
					}

					alert('등록되었습니다.');
				}
				else if(data.msg){
					alert(data.msg);
		
					if(data.focus){
						$form.find('*[name="'+data.focus+'"][type!="hidden"]').focus();
					}
				}
			}
		});

		
	});
});	
</script>
	</main><!-- .site-main -->
</div><!-- .content-area -->
		</div><!-- .site-content -->

	</div><!-- .site-inner -->
</div><!-- .site -->
<script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/js/skip-link-focus-fix.js?ver=20160816'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/comment-reply.min.js?ver=4.7.3'></script>
<!-- <script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/js/functions.js?ver=20160816'></script> -->
<script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/functions/kmcis/kmcis.js'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/functions/validation/validation.js'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/wp-embed.min.js?ver=4.7.3'></script>
</div>
<!-- 탑버튼 -->
<a href="#top" class="top_btn">
	<span class="icon_item"><span class="arrow_basic"></span><span class="arrow_one"></span><span class="arrow_two"></span></span>
	<span class="text">TOP</span>
</a>
<!-- .탑버튼 -->
</body>
</html>