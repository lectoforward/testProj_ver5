<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <style>
  	#sidebar{
  		float: left;
  	}
  	#sidebar:before, #sidebar:after{
  		clear:both;
  		content:"";
  	}
  	
  </style>
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div id="header">
	<%@ include file="adminheader.jsp" %>
	</div>
	<div id="sidebar">
	<%@ include file="adminsidebar.jsp" %>
	</div>
	
	<div class="container-fluid" id="content">
	   	 	<div class="well text-center">
	   	 		<h2 style="font-weight:bold;">게시글 수 통계</h2>    
	 	 	</div>
	 	 	
	        <div class="col-sm-10">
	          <div class="well container-fluid" style="height:100%;background:white;">
	            <div class="container-fluid">
	 	 
				<div class="panel panel-default">
					<form id="regExForm" action="/signupform" method="POST">
						<span>아이디</span>
						<div class="panel-body">
							<label for="idCipher">아이디 자릿수</label>
							<input type="text" id="idCipher" name="idCipher" placeholder="아이디 자릿수를 입력해 주세요.">
						</div>
						<div class="panel-body">
							<label>아이디 조합</label>
							<select id="selectId" name="selectId">
								<option>영문</option>
								<option>숫자</option>
								<option>영문+숫자</option>
							</select>
						</div>
						
						
						<div class="pwdbx">
								비밀번호
							<div class="panel-body">
								<label for="pwdCipher">비밀번호 자릿수</label>
								<input type="text" id="pwdCipher" name="pwdCipher">
							</div>
							<div class="panel-body">
								<label>비밀번호 조합</label>
								<select id="selectPwd" name ="selectPwd" class="dropup ">
									<option>영문</option>
									<option>숫자</option>
									<option>영문+숫자</option>
									<option>영문+숫자+특수문자</option>
								</select>
							</div>
						</div>
					
						<div class="nicknameBx">
							닉네임
							<div>
								<label for="nickCipher">닉네임 자릿수</label>
								<input type="text" id="nickCipher" name="nickCipher">
							</div>
							<div>
								<label>닉네임 조합</label>
								<select id="selectNick" name="selectNick">
									<option>영문</option>
									<option>숫자</option>
									<option>영문+숫자</option>
								</select>
							</div>
						</div>
					</form>
					<input type="button" value="등록" id="regBtn">
					<input type="button" value="취소" id="cancelBtn">
					</div>
				</div>
				</div>
			</div>
		</div>
</body>
</html>


<script>
	jQuery(document).ready(function(e){
		/* 전송 버튼 클릭시 데이터 전송 */
		$("#regBtn").on("click", function(e){
			$("#regExForm").submit();
		})
		
		/* 취소 버튼 클릭시 이전 화면으로 페이지 이동 */
		$("#cancelBtn").on("click", function(e){
			alert("취소 버튼 기능 아직 안만들엇어");
		});
	})
</script>