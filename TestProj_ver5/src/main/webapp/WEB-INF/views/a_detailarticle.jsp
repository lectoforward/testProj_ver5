<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>
  	#sidebar{
  		float: left;
  	}
  	#sidebar:before, #sidebar:after{
  		clear:both;
  		content:"";
  	}
  </style>
</head>
<body>

<div id="header">
<%@ include file="adminheader.jsp" %>
</div>
<div id="sidebar">
<%@ include file="adminsidebar.jsp" %>
</div>
<div id="content">
   	 <div class="well text-center">
   	 		<h2 style="font-weight:bold;">${selectBoardName}&nbsp;게시글 관리</h2>    
 	 </div>

     <div class="col-sm-10">
        <div class="well" style="height:100%;background:white;">
          <div class="container-fluid">
          <h4 style="font-weight:bold;">게시글 조회</h4><br>  
			<div class="col-sm-6">				
				
			<form id="formValue">
				
				<div class="box-body" style="border:0.2px solid #ccc;padding:20px;">
					<input type="hidden" id="articleCode" name="articleCode" value="${article.articleCode}">
					<div class="form-group">
						<c:if test="${article.notice eq true}">
							<label>공지글</label>
						</c:if>
						<c:if test="${article.notice ne true}">
							<label>일반글</label>
						</c:if>
						<label class="pull-right">작성자 :&nbsp;${article.memberNickname}</label>
					</div>
					<div class="form-group">
						<label for="subject">${article.articleTitle}</label>
					</div>
					<div class="form-group">
						<label class="pull-left">${article.articleDate}</label>
						<label class="pull-right">조회수&nbsp;${article.articleHits}</label>
					</div> 
					<br>
					<div class="form-group" style="margin-top:10px">
						<textarea class="form-control" name="articleContent" rows="3"
						style="height:400px;width:100%;" readonly="readonly">${article.articleContent}</textarea>
					</div>
					<div class="center-float text-center"> 
						<button class="btn btn-success" id="goListBtn">목록</button>
						<button class="btn btn-warning" id="modifyBtn">수정</button>
						<button class="btn btn-danger" id="removeBtn">삭제</button>
					</div>
				</div>
			</form>
		</div>
	   </div>
	</div>
</div>
</div>			
</body>
<script type="text/javascript">

$(document).ready(function(){
	var bc = '${selectBoardCode}';
	var bn = '${selectBoardName}';
	var ac = $("input[name=articleCode]").val();
	
	$('#removeBtn').click( function() {
		var $form = $('#formValue');
		$form.attr('action', '/a_articlelist/deleteone');
		$form.attr('method', 'get');
		$form.appendTo('body');
		var boardCode = '<input type="hidden" value="' + bc + '" name="selectBoardCode">';
	    var boardname = '<input type="hidden" value="' + bn + '" name="selectBoardName">';
	    $form.append(boardCode);
	    $form.append(boardname);
	    $form.submit();
	});
	
	$('#goListBtn').click( function() {
		var $form = $('#formValue');
		$form.attr('action', '/a_articlelist');
		$form.appendTo('body');
	    var boardname = '<input type="hidden" value="' + bn + '" name="selectBoardName">';
	    $form.append(boardname);
		$form.attr('method', 'get');
	    $form.submit();
	});
	
	$('#modifyBtn').click( function() {
		var $form = $('#formValue');
		$form.attr('action', '/a_editarticle');
		$form.appendTo('body');
	    var boardname = '<input type="hidden" value="' + bn + '" name="selectBoardName">';
	    $form.append(boardname);
		$form.attr('method', 'get');
	    $form.submit();
	});
});

</script>
</html>