<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판 관리</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#sidebar {
	float: left;
}

#sidebar:before, #sidebar:after {
	clear: both;
	content: "";
}
</style>
</head>
<body>
	<div id="header">
		<%@ include file="adminheader.jsp"%>
	</div>
	<div id="sidebar">
		<%@ include file="adminsidebar.jsp"%>
	</div>
	<div id="content">
		<div class="well text-center">
			<h2 style="font-weight: bold;">${selectBoardName}&nbsp;관리</h2>
		</div>
		
		<form id="formValue">

			<div class="col-sm-10">
				<div class="well" style="height: 100%; background: white;">
					<div class="container-fluid">
						<h4 style="font-weight: bold;">${selectBoardName}&nbsp;관리</h4>		
						<input type="hidden" name="selectBoardCode" value="${selectBoardCode}">
						<input type="hidden" name="selectBoardName" value="${selectBoardName}">					
						<br>
						<div class="">
							<select id="searchWay" name="searchWay" class="form-control col-md-6" style="width: 150px">
								<option>닉네임</option>
								<option>제목</option>
								<option>내용</option>
							</select>
							<input type="text" id="keyword" name="keyword" class="form-control col-md-4" style="width: 200px" />
							<button type="button" class="btn btn-info" id="btnSearch">검색</button>
						</div>
						<br>
						<table class="table table-striped active" id="tb">
							<thead>
								<tr>
									<th><input type="checkbox" id="checkall"></th>
									<th>글번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일자</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${articlelist}" var="articleVO">
										<tr id="tr">
											<td><input type="checkbox" class="checkthis" name="chk" value="${articleVO.articleCode}"></td>
											<!-- no -->
											<td>${articleVO.articleCode}</td>
											<!-- 제목 -->
											<td>${articleVO.articleTitle}</td>
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
						<hr />
						<div class="text-center">
							<ul class="pagination">
								<li><a href="#">◀</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">▶</a></li>
							</ul>
						</div>
						<button class="btn btn-danger pull-right" id="removeBtn">삭제</button>
						<button class="btn btn-success pull-right" id="addBtn">글쓰기</button>
						<button class="btn btn-warning pull-left" id="themeChange">테마 변경</button>
						<button class="btn btn-primary pull-left" id="editBtn">게시판수정</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
<script>
	$(document).ready(function() {
		var c =$('input[name=selectBoardCode]').val();
		var n =$('input[name=selectBoardName]').val();

		$('#tb #tr').click(function(){
			var tr = $(this);
			var td  = tr.children();
			var tmp = td.eq(1).text();
			var $form =$('<form></form>');
			$form.attr('action','/a_detailarticle');
			$form.attr('method','get');
			$form.appendTo('body');
			var input1 = '<input type="hidden" value="' + tmp + '" name="selectArticleCode">';
			var input2 = '<input type="hidden" value="' + c + '" name="selectBoardCode">';
			var input3 = '<input type="hidden" value="' + n + '" name="selectBoardName">';
			$form.append(input1);
			$form.append(input2);
			$form.append(input3);
			$form.submit();
		}); 
		 
		$('#tb tr').on('click', ':checkbox', function(e) {
			    e.stopPropagation();
		});
		
		$('#addBtn').click( function() {
			var $form = $('#formValue');
			$form.attr('action', '/a_addarticle');
			$form.attr('method', 'get');
			$form.appendTo('body');
		    $form.submit();
		});
		
		$('#editBtn').click( function() {
			var $form = $('#formValue');
			$form.attr('action', '/a_editboard');
			var input1 = '<input type="hidden" value="' + c + '" name="clickboardCode">';
			$form.append(input1);
			$form.attr('method', 'get');
			$form.appendTo('body');
		    $form.submit();
		});
		
		// 삭제
		$('#removeBtn').click( function() {
			$("input[name=chk]:checked").each(function() {
				var test = $(this).val();
			});
				var $form = $('#formValue');
				$form.attr('action', '/a_articlelist/delete');
				$form.attr('method', 'post');
				$form.appendTo('body');
			    $form.submit();
		});
		
		$("#checkall").click(function(){
			$(".chk").prop('checked', $(this).prop('checked'));
		});
		
		// 검색
		$('#btnSearch').click( function() {
			var kw =$('input[name=keyword]').val();
			if(kw != null){
				 var $form = $('#formValue');
			     $form.attr('action', '/a_articlelist/search');
			     $form.attr('method', 'post');
			     $form.appendTo('body');
			     $form.submit();
			} else{
				alert('검색어를 입력해주세요.');
			}
		});
		
		$('#themeChange').bind("click",function(){
			
			/* var bc = ${boardCode}; */
			alert(c);
			var $form = $('<form></form>');
			$form.attr('action','/a_theme');
			$form.attr('method','get');
			$form.appendTo('body');
			var code = '<input type="hidden" value="' + c + '" name="boardCode">';
			$form.append(code);
			$form.submit();
		});
	});
</script>
</html>