<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   	 		<h2 style="font-weight:bold;">게시글 관리</h2>    
 	 </div>

     <div class="col-sm-10">
        <div class="well" style="height:100%;background:white;">
          <div class="container-fluid">
          <h4 style="font-weight:bold;">게시글 수정</h4><br>  
          
			<form class="mainForm col-sm-6" method="post" action="/a_editarticle">				
				<input type="hidden" name="selectBoardName" value="${selectBoardName}">
				
				<div class="box-body" style="border:0.2px solid #ccc;padding:20px;">				
					<input type="hidden" name="articleCode" value="${articleVO.articleCode}">
					<div class="form-group"> 
						<label for="articleTitle">작성자</label> 
						<input type="text" class="form-control" name ="memberNickname"
						value="${articleVO.memberNickname}" id="memberNickname" readonly> 
					</div> 
					
					<div class="form-group">
						<label for="notice">공지사항</label>
						<c:if test="${articleVO.notice eq true}">
							<input type="radio" name="notice" id="notice" value="true"> 공지글
						</c:if>
						<c:if test="${articleVO.notice ne true}">
							<input type="radio" name="notice" id="notice" value="false" checked> 일반글
						</c:if>
					</div>	
					
					<div class="form-group"> 
						<label for="articleTitle">제목</label> 
						<input type="text" class="form-control" name ="articleTitle"
						value="${articleVO.articleTitle}" id="articleTitle" placeholder="제목을 입력하세요."> 
					</div>
					
					<div class="form-group"> 
						<label for="articleContent">내용</label> 
						<textarea class="form-control" rows="10" name="articleContent"
						id="articleContent" placeholder="내용을 입력하세요.">${articleVO.articleContent}</textarea> 
					</div>
					
					<div class="center-float text-center"> 
						<input type="submit" class="btn btn-success" id="addBtn" value="등록">
						<input type="button" class="btn btn-warning" id="goListBtn" value="취소">
					</div> 
				</div>
			</form>
		</div>
	   </div>
	</div>
</div>			
</body>
<script type="text/javascript">
$(document).ready(function(){
	$('#goListBtn').click( function() {
		var bn = '${selectBoardName}';
		location.href = '/a_articlelist?selectBoardName='+bn;
	});
});
</script>
</html>