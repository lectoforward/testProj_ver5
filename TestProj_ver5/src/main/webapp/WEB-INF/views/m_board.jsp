<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<%@ include file="userheader.jsp" %>
<html lang="ko-KR">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>
<title>SMASH</title>

<link rel='dns-prefetch' href='//code.jquery.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
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
.footer_navbx{

}
.max_container > ul{
	padding: 0 0 0 40%;
}
</style>

<script>

</script>
<link rel='stylesheet' id='my-css'  href='http://192.168.30.24/webProject/css/mycss.css' type='text/css' media='all' />
<link rel='stylesheet' id='dashicons-css'  href='http://192.168.30.24/webProject/css/dashicons.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='post-views-counter-frontend-css'  href='http://192.168.30.24/webProject/css/frontend.css' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-fonts-css'  href='http://192.168.30.24/webProject/css/css.css' type='text/css' media='all' />
<link rel='stylesheet' id='genericons-css'  href='http://192.168.30.24/webProject/css/genericons.css' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-style-css'  href='http://192.168.30.24/webProject/css/style.css' type='text/css' media='all' />
<link rel='stylesheet' id='jquery-ui-css'  href='http://192.168.30.24/webProject/css/jquery-ui.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='unslider-css'  href='https://cdnjs.cloudflare.com/ajax/libs/unslider/2.0.3/css/unslider.css' type='text/css' media='all' />
<script type='text/javascript' src='http://192.168.30.24/webProject/js/jquery.js'></script>
<script type='text/javascript' src='http://192.168.30.24/webProject/js/jquery-migrate.min.js'></script>
<script type='text/javascript' src='http://code.jquery.com/ui/1.11.4/jquery-ui.min.js'></script>
<!-- <script type='text/javascript' src='./resources/css/unslider.js'></script> -->
<link rel="alternate" type="application/json+oembed" href="./json/embed.json" />
<link rel="alternate" type="text/xml+oembed" href="./json/embed.json" />
		<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
	<link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/css/template.css?20170607" type="text/css" media="all">
	<link rel="stylesheet" href="http://192.168.30.24/webProject/css/metabrain-editor.css" type="text/css" media="all">
	<script type="text/javascript" src="http://192.168.30.24/webProject/js/common.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="background:white;">

	<div class="pg_topbannerbx">
	<div class="bg"></div>
	<div class="max_container">
		<!-- 타이틀 박스 -->
		<div class="title_bx">
			<h2 class="entry-title">${boradDTO.boardName}</h2>
						<!-- 빵가루 -->
			<div class="breadcrumb" style="background-color:unset;">
				<ul>
					<li class="home"><a class="item" href="/index">home</a></li>						
					<li><a class="item" href="/m_board?boardCode=${boardCode}&page=1">${boardDTO.boardName}</a></li>						
				</ul>
			</div>
			<!-- .빵가루 -->
		</div>
		<!-- .타이틀 박스 -->
	</div>
</div>
<!-- .헤더 -->
<div id="primary" class="content-area">
	<div id="main" class="site-main" role="main">
		<div class="content_rowbx">
			<div class="max_container">
				<article id="post-42" class="post-42 page type-page status-publish hentry">
					<div class="entry-content">
						<!-- 컨텐츠 시작 -->
					<c:if test="${themeCode eq 'th1'}">
								<!-- 셀렉박스 -->
								<div class="headbx">
									<div class="tabbx tabrow50">
										<ul>
											<li><a href="#" data-tab-link="#">공지사항</a></li>
											<li class="active"><a href="#" data-tab-link="#">자유게시판</a></li>
										</ul>
									</div>
								</div>

								<div class="headbx">
									<div class="basic_s_bx">
										<!-- 셀렉박스 -->
										<div class="basic_select_bx board_select_bx">
											<!-- <a class="textbx" href="#;">제목</a> -->
											<select style="width: 70px; height: 46px;color=light-gray;"
												name="selectBox" id="selectBox">
												<option value="subject">제목</option>
												<option value="content">내용</option>
												<option value="author">작성자</option>
											</select>
										</div>
										<!-- 서치박스 -->
										<div class="basic_search_bx">
											<form name="board_search" method="GET" id="search">
												<input type="hidden" id="boardCode" name="boardCode"
													value="${boardCode}"> <input type="hidden" id="searchWay" name="searchWay" value="">
													<label for="pg_search">search</label>
													<input id="pg_search" type="text" name="keyword" class="text_input" value="">
											</form>
										</div>
										
										<!-- .서치박스 -->
										<form name="write1" action="/m_writearticle" method="GET"
											id="write1">
											<input type="hidden" id="boardCode" name="boardCode"
												value="${boardCode}">
										</form>
									</div>
									<div class="listButtonBx">
										<a href="/a_articlelist/search?selectBoardName=${boradDTO.boardName}" class="btns" id="searchButton">검색</a>
									</div>
								</div>
								<!-- .셀렉박스 -->
								<div class="tbl_basiclist">
									<table>
										<caption>자유게시판</caption>
										<colgroup>
											<col style="width: 13%;">
											<col style="width: 61%;">
											<col style="width: 13%;">
											<col style="width: 13%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">No</th>
												<th scope="col">제목</th>
												<th scope="col">작성자</th>
												<th scope="col">작성일</th>
												<th scope="col">조회수</th>
											</tr>
										</thead>
										<tbody id="articleList">
											<c:forEach items="${list}" var="articleVO">
												<tr>
													<!-- no -->
													<td>${articleVO.articleCode}</td>
													<!-- 제목 -->
													<td>
													<a href='m_detailarticle${pageMaker.makeQuery(pageMaker.cri.page)}&articleCode=${articleVO.articleCode}&boardCode=bo2'>
															${articleVO.articleTitle}</a></td>

													<!-- 작성자 -->
													<td>${articleVO.memberNickname}</td>
													<!-- 작성일 -->
													<td>${articleVO.articleDate}</td>
													<!-- 조회수-->
													<td><span class="badge bg-red">${articleVO.articleHits }</span></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- .리스트 -->
								<!-- ` 버튼 -->
								<c:if test="${sessionScope.login != null}">
								<div class="basic_btnbx">
									<button class="basic_btn" id="addArticle_btn2"><span class="text">글쓰기</span></button>
								</div>
								</c:if>


								<!--. 글쓰기 버튼 -->
								<!-- 페이징 -->
								<form id="jobForm">
									<input type="hidden" name="page"
										value=${pageMaker.cri.page}>
									<input type="hidden" name="perPageNum" value=${pageMaker.cri.perPageNum}>
								</form>

								<div class="text-center">
									<ul class="pagination">
										<c:if test="${pageMaker.prev}">
											<li><a
												href="m_board?boardCode=${boardCode}&page=${pageMaker.startPage -1}">&laquo;</a></li>
										</c:if>

										<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
											<li
												<c:out value="${pagMaker.cri.page == idx?'class=active':''}"/>>
												<a href="m_board?boardCode=${boardCode}&page=${idx}">${idx}</a>
											</li>
										</c:forEach>

										<c:if test="${pageMaker.next && pageMaker.endPage>0}">
											<li><a
												href="m_board?boardCode=${boardCode}&page=${pageMaker.endPage+1}">&raquo;</a></li>
										</c:if>
									</ul>
								</div>
								<!-- .페이징 -->
							</c:if>
				<!-- .컨텐츠 시작 -->
				
				<c:if test="${themeCode eq 'th2'}">
								<link rel="stylesheet" type="text/css"
									href="./resources/css/theme2.css">
								<!-- 셀렉박스 -->

								<!-- <div class="pg_headbx align_c m_top">
								<div class="tabbx tabrow50">
									<ul>
										<li><a href="#" data-tab-link="#">공지사항</a></li>
										<li class="active"><a href="#" data-tab-link="#">자유게시판</a></li>
									</ul>
								</div>
							</div> -->

								<div id="topImage">
									<a href="/m_board?boardCode=bo1&page=10"> <img src="http://192.168.30.24/webProject/images/notice.png"
										class="imagesHover" id="noticeImage" alt="notice" border="3px"
										width="100px" align="left">
									</a> <a href="/m_board?boardCode=bo2&page=10"> <img src="http://192.168.30.24/webProject/images/board.png"
										class="imagesHover" id="boardImage" alt="board" border="3px"
										width="100px" align="left">
									</a>


								</div>
								<!-- <div>
							<p class="topImagetext1">공지사항</p>
							<p class="topImagetext2">자유게시판</p>
							</div> -->



								<!-- .셀렉박스 -->
								<c:if test ="${sessionScope.login != null}">
									<div class="basic_btnbx">
										<button class="basic_btn" id="addArticle_btn1"><span
											class="text">글쓰기</span></button>
									</div>
								</c:if>


								<div class="tbl_basiclist">
									<table>
										<caption>자유게시판</caption>
										<colgroup>
											<col style="width: 13%;">
											<col style="width: 61%;">
											<col style="width: 13%;">
											<col style="width: 13%;">
										</colgroup>
										<thead>
											<tr id="contentTitle">
												<th scope="col">No</th>
												<th scope="col">제목</th>
												<th scope="col">작성자</th>
												<th scope="col">작성일</th>
												<th scope="col">조회수</th>
											</tr>
										</thead>
										<tbody id="articleList">
											<c:forEach items="${list}" var="articleVO">
												<tr>
													<!-- no -->
													<td>${articleVO.articleCode}</td>
													<!-- 제목 -->
													<td><a href='m_detailarticle${pageMaker.makeQuery(pageMaker.cri.page)}&articleCode=${articleVO.articleCode}&boardCode=bo2'>
															${articleVO.articleTitle}</a></td>

													<!-- 작성자 -->
													<td>${articleVO.memberNickname}</td>
													<!-- 작성일 -->
													<td>${articleVO.articleDate}</td>
													<!-- 조회수-->
													<td><span class="badge bg-red">${articleVO.articleHits }</span></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- .리스트 -->
								<!-- ` 버튼 -->
								<%-- <c:if test="${sessionScope.login != null}"> --%>

								<%-- </c:if> --%>


								<div class="pg_headbx align_c">
									<div class="basic_s_bx">
										<!-- 셀렉박스 -->
										<div class="basic_select_bx board_select_bx">
											<!-- <a class="textbx" href="#;">제목</a> -->
											<select style="width: 70px; height: 46px;" name="selectBox"
												id="selectBox">
												<option value="subject">제목</option>
												<option value="content">내용</option>
												<option value="author">작성자</option>
											</select>

											<!-- <ul class="select_ul">
										<li><a href="javascript:" data-value="subject">제목</a></li>
										<li><a href="javascript:" data-value="content">내용</a></li>
										<li><a href="javascript:" data-value="author">작성자</a></li>
									</ul>  -->
										</div>
										<!-- 서치박스 -->
										<div class="basic_search_bx">
											<form name="board_search" method="GET" id="search">
												<input type="hidden" id="boardCode" name="boardCode"
													value="${boardCode}"> <input type="hidden"
													id="searchWay" name="searchWay" value=""> <label
													for="pg_search">search</label> <input id="pg_search"
													type="text" name="keyword" class="text_input" value="">
											</form>
										</div>
										



										<!-- .서치박스 -->
										<form name="write2" action="/m_writearticle" method="GET"
											id="write2">
											<input type="hidden" id="boardCode" name="boardCode"
												value="${boardCode}">
										</form>
									</div>
									<div class="listButtonBx">
										<a href="/a_articlelist/search" class="btns" id="searchButton">검색</a>
									</div>
								</div>


								<!--. 글쓰기 버튼 -->
								<!-- 페이징 -->
								<form id="jobForm">
									<input type="hidden" name="page"
										value=${pageMaker.cri.page}> <input
										type="hidden" name="perPageNum"
										value=${pageMaker.cri.perPageNum}>
								</form>

								<div class="text-center">
									<ul class="pagination">
										<c:if test="${pageMaker.prev}">
											<li><a
												href="m_board?boardCode=${boardCode}&page=${pageMaker.startPage -1}">&laquo;</a></li>
										</c:if>

										<c:forEach begin="${pageMaker.startPage}"
											end="${pageMaker.endPage}" var="idx">
											<li
												<c:out value="${pagfeMaker.cri.page == idx?'class=active':''}"/>>
												<a href="m_board?boardCode=${boardCode}&page=${idx}">${idx}</a>
											</li>
										</c:forEach>

										<c:if test="${pageMaker.next && pageMaker.endPage>0}">
											<li><a href="m_board?boardCode=${boardCode}&page=${pageMaker.endPage+1}">&raquo;</a></li>
										</c:if>
									</ul>
								</div>
							</c:if>
							<!-- .컨텐츠 시작 -->
						</div>
						<!-- .entry-content -->
					</article>
					<!-- #post-## -->
				</div>
			</div>
		</div>
		<!-- .site-main -->
	</div>
</body>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	jQuery(document).ready(function($){
		/* 글쓰기 페이지 이동 */
		$("#addArticle_btn1").on("click", function(e){
			$("#write1").submit();
		});
		
		$("#addArticle_btn2").on("click", function(e){
			$("#write2").submit();
		});
		

		/* 검색 */
		$("#searchButton").click(function() {
			alert("dd");
			var target = document.getElementById("selectBox");
			$("#searchWay").val(target.options[target.selectedIndex].value);
			var $form = $("#board_search");
			$form.attr("action","/m_searchKeyAndWay");
			$form.attr("method", "GET");
			$form.submit();
		});	
		
			
		/* 상세보기  동적 폼 생성*/
		/* $('#articleList tr').click( function() {
			 var tr = $(this);
			 var td = tr.children();
			 var id = td.eq(0).text();
		     var $form = $('<form></form>');
		     $form.attr('action', '/m_detailarticle');
		     $form.attr('method', 'get');
		     $form.appendTo('body');
		     var articleCd = '<input type="hidden" name="articleCode" value="' +id + '"articleCode="$(articleCode)">';
		     $form.append(articleCd);
		     $form.submit();
		}); */
		
		$('#tb tr').on('click', ':checkbox', function(e) {
		    e.stopPropagation();
		});
		
	});	
		$('#noticeImage').mouseover(function() {
	 		$('.topImagetext1').css("visibility", "visible");
	 	});
	 
	 	$('#noticeImage').mouseout(function() {
	 		$('.topImagetext1').css("visibility", "hidden");
	 	});
	 
	 	$('#boardImage').mouseover(function() {
	 		$('.topImagetext2').css("visibility", "visible");
	 	});
	 
	 	$('#boardImage').mouseout(function() {
			$('.topImagetext2').css("visibility", "hidden");
		});
	 
		
	 	$(".pagination li a").on("click", function(event){
			event.preventDefault();
			var targetPage = $(this).attr("href");
			var page = ${page};	
			var jobForm=$("#jobForm");
			jobForm.find("[name='page']").val(targetPage);
			jobForm.attr("action","/m_board/boardCode=${boardCode}&");
			jobForm.attr("method","get");
			jobForm.submit();
		});
</script>
</html>